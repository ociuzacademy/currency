from django.shortcuts import render
from .models import *
from django.contrib.auth import logout
from django.http import HttpResponse, HttpResponseRedirect
from django.core.mail import send_mail
from django.template.loader import render_to_string
from django.conf import settings




# Create your views here.
def index(request):
	return render(request,'index.html')
def details(request):
    return render(request,'details.html')
def about(request):
    return render(request,'about.html')

def about_admin(request):
    return render(request,'admin_home.html')
def view_feedback(request):
    var=Tbl_Feedback.objects.all()
    return render(request,'view_feedback.html',{'var':var})
def contact_us(request):
    if request.method=='POST':
        name=request.POST["name"]
        email=request.POST["email"]
        subject=request.POST["subject"]
        a=Tbl_Feedback(name=name,email=email,subject=subject)
        a.save()
        return render(request,'contact_us.html',{'success':'Succesfully Submitted'})

    else:
        return render(request,'contact_us.html')
def add_feedback(request):
    if request.method=='POST':
        name=request.POST["name"]
        email=request.POST["email"]
        subject=request.POST["subject"]
        a=Tbl_Feedback(name=name,email=email,subject=subject)
        a.save()
        return render(request,'contact.html',{'success':'Succesfully Submitted'})
    else:
        return render(request,'contact.html')
def register(request):
    if request.method=="POST":
        name=request.POST["name"]
        email=request.POST["email"]
        password=request.POST["password"]
        phone=request.POST["phone"]
        place=request.POST["place"]
        chk=Tbl_User.objects.all().filter(email=email)
        if chk:
            return render(request, 'register.html', {'error': 'Email Id already existed.!'})
        else:
            a=Tbl_User(name=name,email=email,password=password,user_type="User",phone=phone,place=place)
            a.save()
            subject = 'Money Checker'   
            message=render_to_string('email_msg.html', {'user': email,'psw': password,})            
            email_from = settings.EMAIL_HOST_USER 
            recipient_list = [email, ] 
            send_mail( subject, message, email_from, recipient_list )
            # return render(request,'register.html')	
            text = """<script>alert('successfully Registered');window.location='/register/';</script>"""
            return HttpResponse(text)
    else:
        return render(request,'register.html')	


def login(request): 
    if request.method == "POST":
        email  			= request.POST["email"]
        password 		= request.POST["password"]
        admin 		= Tbl_User.objects.filter(email=email, password=password,user_type="Admin")
        user 		= Tbl_User.objects.filter(email=email, password=password,user_type="User")
        police =Tbl_police.objects.filter(email=email, password=password,user_type="police")

      
        if admin:
            for x in admin:
                request.session['id'] = x.id

            return render(request,'admin_home.html',{'success':'Succesfully LogedIn',})
        elif user:
            for x in user:
                request.session['id'] = x.id
            return render(request,'about.html',{'success':'Succesfully LogedIn'})
        elif police:
            for x in police:
                request.session['id'] = x.id
            return render(request,'police/police_home.html',{'success':'Succesfully LogedIn'})
        else:
            return render(request, 'login.html', {'error': 'Invalid login credentials.!'})
    else:
        return render(request, 'login.html')


def view_users(request):
    var=Tbl_User.objects.all().filter(user_type="User")
    return render(request, 'list_users.html',{'var':var})

def remove_user(request):
    ii=request.GET['id']
    var=Tbl_User.objects.all().filter(id=ii).delete()
    text = """<script>alert('Successfully Removed');window.location='/view_users/';</script>"""
    return HttpResponse(text)
def remove_feedback(request):
    ii=request.GET['id']
    var=Tbl_Feedback.objects.all().filter(id=ii).delete()
    text = """<script>alert('Successfully Removed');window.location='/view_feedback/';</script>"""
    return HttpResponse(text)
def logout(request):
    if request.session.has_key('id'):
        del request.session['id']
        logout(request)
    return HttpResponseRedirect('/')
def profile_admin(request):
        ii=request.session['id']
        var=Tbl_User.objects.all().filter(id=ii)
        return render(request,'profile.html',{'var':var})

def profile_user(request):
        ii=request.session['id']
        var=Tbl_User.objects.all().filter(id=ii)
        return render(request,'profile_user.html',{'var':var})
def edit_profile(request):
    if request.session.has_key('id'):

        if request.method=="POST":
            ii=request.session['id']
            name=request.POST["name"]
            email=request.POST["email"]
            password=request.POST["password"]
            phone=request.POST["phone"]
            a=Tbl_User.objects.all().filter(id=ii).update(name=name,email=email,password=password,phone=phone)
            return HttpResponseRedirect('/profile_admin/')

        else:
            ii=request.session['id']
            var=Tbl_User.objects.all().filter(id=ii)
            return render(request,'edit_profile.html',{'var':var})

def edit_profile_user(request):
    if request.session.has_key('id'):

        if request.method=="POST":
            ii=request.session['id']
            name=request.POST["name"]
            email=request.POST["email"]
            password=request.POST["password"]
            phone=request.POST["phone"]
            a=Tbl_User.objects.all().filter(id=ii).update(name=name,email=email,password=password,phone=phone)
            return HttpResponseRedirect('/profile_user/')

        else:
            ii=request.session['id']
            var=Tbl_User.objects.all().filter(id=ii)
            return render(request,'edit_profile_user.html',{'var':var})
from django.core.files.storage import FileSystemStorage

from django.core.files.storage import FileSystemStorage
import random

def check_note(request):
    if request.session.has_key('id'):

        if request.method == "POST":

            ii = request.session['id']

            note = request.FILES["note"]

            fs = FileSystemStorage()

            path = "currency/%s" % note.name

            filename = fs.save(path, note)

            qid = Tbl_User.objects.get(id=ii)

            # Temporary prediction
            result = random.choice([
                "Genuine",
                "Counterfeit"
            ])

            Tbl_Currency.objects.create(
                user_id=qid,
                name=note.name,
                image=filename,
                result=result
            )

            return HttpResponseRedirect('/list_note/')

        return render(request,'check_note.html')

    return render(request,'check_note.html')

def list_note(request):

    if not request.session.has_key('id'):
        return HttpResponseRedirect('/login/')

    ii = request.session['id']

    var = Tbl_Currency.objects.filter(
        user_id=ii
    ).order_by('-id')

    return render(
        request,
        'list_note.html',
        {'var': var}
    )
def converter(request):
    ii=request.session['id']
    return render(request,'converter.html')


# def check_currency(request):
#     if request.method=="POST":
#         ii=request.session['id']
#         return render(request,'checking.html')
#     else:
#         idd=request.GET["id"]
#         var=Tbl_Currency.objects.all().filter(id=idd)
#         for x in var:
#             name=x.name
#         print("name of curecny is",name)
#         var1=Tbl_Note.objects.all().filter(name=name)
#         for x in var1:
#             tname=x.name
#         # print("name of curecny is",tname)
#         print("details of var1",var1)

#         return render(request,'checking.html',{'idd':idd,'var':var,'var1':var1,'name':name})

def check_currency(request):

    idd = request.GET["id"]

    currency = Tbl_Currency.objects.get(id=idd)

    return render(
        request,
        'checking.html',
        {
            'currency': currency
        }
    )

def adm_view_currency_detail(request):
    var=Tbl_Currency.objects.all()
    return render(request,'adm_view_cuurency_detail.html',{'var':var})
def adm_view_more_detail(request):

    ii = request.GET['id']

    currency = Tbl_Currency.objects.get(id=ii)

    return render(
        request,
        'currency_more.html',
        {
            'currency': currency
        }
    )

#------------------------police--------------------------------------
def police_home(request):
    return render(request,'police/police_home.html')

def police_reg(request):
    if request.method=="POST":
        name=request.POST["name"]
        email=request.POST["email"]
        password=request.POST["psw"]
        phone=request.POST["phone"]
        image=request.FILES["idcard"]
        place=request.POST["place"]
        chk=Tbl_police.objects.all().filter(email=email)
        if chk:
            return render(request, 'police/police_reg.html', {'error': 'Email Id already existed.!'})
        else:
            a=Tbl_police(name=name,email=email,password=password,user_type="police",phone=phone,place=place,img=image)
            a.save()   
            text = """<script>alert('successfully Registered');window.location='/police_reg/';</script>"""
            return HttpResponse(text)
    else:
        return render(request,'police/police_reg.html')

def police_prof(request):
    ii=request.session['id']
    var=Tbl_police.objects.all().filter(id=ii)
    return render(request,'police/police_prof.html',{'var':var})

def police_curdetails(request):
    var=Tbl_Currency.objects.all()
    return render(request,'police/police_curdetails.html',{'var':var})  

def police_curmore(request):

    ii = request.GET['id']

    currency = Tbl_Currency.objects.get(id=ii)

    return render(
        request,
        'police/police_curmore.html',
        {
            'currency': currency
        }
    )


