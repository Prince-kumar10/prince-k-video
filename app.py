from flask import Flask, render_template, request, redirect
from flask_sqlalchemy import SQLAlchemy
import datetime
from flask_mail import Mail
import json
import math
import webbrowser

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True

app = Flask(__name__)
app.config.update(
    MAIL_SERVER = "smtp.gmail.com",
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params["gmail-user"],
    MAIL_PASSWORD = params["gamil-password"]
)
mail=Mail(app)



if (local_server):
    app.config["SQLALCHEMY_DATABASE_URI"] = params["local_uri"]
else:
    app.config["SQLALCHEMY_DATABASE_URI"] = params["prod_uri"]

db = SQLAlchemy(app)


class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True, nullable=False)
    name = db.Column(db.String(20), nullable=False)
    email = db.Column(db.String(50), nullable=False)
    subject = db.Column(db.String(20), nullable=False)
    message = db.Column(db.String(100),  nullable=False)
    date = db.Column(db.String, nullable=True)


class Upload(db.Model):
    sno = db.Column(db.Integer, primary_key=True, nullable=False)
    namefirst = db.Column(db.String(20), nullable=False)
    slug = db.Column(db.String(20), nullable=False)
    videotitle = db.Column(db.String(50), nullable=False)
    email=db.Column(db.String(100),nullable=False)
    youtubelink = db.Column(nullable=False)
    country = db.Column(db.String(10), nullable=False)
    description = db.Column(db.String, nullable=False)
    date = db.Column(db.String, nullable=True)

class Emails(db.Model):
    sno = db.Column(db.Integer,primary_key=True,nullable=False)
    email = db.Column(db.String(50),nullable=False)

@app.route("/")
def home():
    uploads = Upload.query.filter_by().all()
    last = math.ceil(len(uploads)/int(params["no_of_post"]))

    page = request.args.get("page")
    if (not str(page).isnumeric()):
        page = 1
    
    page = int(page)
    
    uploads = uploads[(page-1)*int(params['no_of_post']):(page-1)*int(params['no_of_post'])+ int(params['no_of_post'])]
                      
    if (page == 1):
        prve = "#"
        next = "/?page="+ str(page+1)
    elif (page == last):
        prve = "/?page="+ str(page-1)
        next = "#"
    else:
        prve = "/?page=" + str(page-1)
        next = "/?page=" + str(page+1)

    return render_template("index.html", params=params, uploads=uploads, prve=prve, next=next)


@app.route("/upload/<string:upload_slug>", methods=['GET'])
def post(upload_slug):
    uploads = Upload.query.filter_by().all()
    upload = Upload.query.filter_by(slug=upload_slug).first()
    return render_template("video-page.html", params=params, upload=upload, uploads=uploads)


@app.route("/about")
def about():
    return render_template("about.html", params=params)


@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if (request.method == "POST"):
        name = request.form.get('name')
        email = request.form.get('email')
        subject = request.form.get('subject')
        message = request.form.get('message')

        entry = Contacts(name=name, email=email,
                         subject=subject, message=message, date=datetime.datetime.now())

        db.session.add(entry)
        db.session.commit()
        mail.send_message("Hello guys my name is " + name ,
        sender=email,recipients=[params['gmail-user']],body = message + "\n" + subject )

    return render_template("contact.html", params=params)


@app.route('/upload', methods=['GET', 'POST'])
def upload():


    if (request.method == 'POST'):
        first = request.form.get('namefirst')
        email = request.form.get('email')
        slug = request.form.get('slug')
        video = request.form.get('videotitle')
        link = request.form.get('youtubelink')
        country = request.form.get('country')
        description = request.form.get("description")

        entry = Upload(namefirst=first,slug=slug, videotitle=video,email=email,
                       youtubelink=link, country=country, description=description, date=datetime.datetime.now())
        
        db.session.add(entry)
        db.session.commit()

        mail.send_message("Hello guys my name is " + video ,
        sender="pk549713@gmail.com",recipients=[{Emails}],body = video + "\n" + link )

       
         

    return render_template("upload.html", params=params)

@app.route("/Newemail",methods=['GET','POST'])
def goemail():

    if (request.method == 'POST'):
       email = request.form.get("email")

       entry = Emails(email=email)
       
       db.session.add(entry)
       db.session.commit()

       return redirect("/")
    

   

if __name__ == "__main__":
    app.run(debug=True)
