from django.shortcuts import render, redirect, get_object_or_404
from dateutil.relativedelta import relativedelta
from datetime import date
from django.core.mail import send_mail
from django.conf import settings
from . models import *

def HOME(request, person_slug):
    person = get_object_or_404(Person, slug=person_slug)
    context = {
        'person': person,
        'page_no': 1
    }
    return render(request, 'home.html', context)

def ABOUT(request, person_slug):
    person = get_object_or_404(Person, slug=person_slug)
    skills = Skills.objects.filter(who=person).order_by('-percent')
    experience = Experience.objects.filter(who=person).order_by('-end_date')
    education = Education.objects.filter(who=person).order_by('-end_date')
    achievements = Achievements.objects.filter(who=person).order_by('-description')

    person.age = relativedelta(date.today(), person.date_of_birth).years

    context = {
        'person': person,
        'skills': skills,
        'achievements': achievements,
        'experience': experience,
        'education': education,
        'page_no': 2
    }
    return render(request, 'about.html', context)

def PORTFOLIO(request, person_slug):
    person = get_object_or_404(Person, slug=person_slug)
    projects = Project.objects.filter(who=person).order_by('priority')

    context = {
        'person': person,
        'all_projects': projects,
        'page_no': 3
    }
    return render(request, 'portfolio.html', context)

def CONTACT(request, person_slug):
    person = get_object_or_404(Person, slug=person_slug)
    social_links = Social_Media_links.objects.filter(who=person).order_by('platform__name')
    context = {
        'person': person,
        'social_links': social_links,
        'page_no': 4
    }
    return render(request, 'contact.html', context)

def BLOG(request, person_slug):
    person = get_object_or_404(Person, slug=person_slug)
    blogs = Blog.objects.filter(who=person).order_by('-date')

    product_count = blogs.count()
    product_per_page = 9
    extra_pages_count = ((int(product_count/product_per_page)-1) if ((product_count%product_per_page)==0) else int(product_count/product_per_page)) if (product_count>product_per_page) else 0

    context = {
        'person': person,
        'all_blogs': blogs,
        'pages_count': extra_pages_count,
        'page_no': 5
    }
    return render(request, 'blog.html', context)

def BLOG_DETAIL(request, person_slug, blog_slug):
    person = get_object_or_404(Person, slug=person_slug)
    blog = get_object_or_404(Blog, who=person, slug=blog_slug)
    context = {
        'person': person,
        'blog': blog,
        'page_no': 5
    }
    return render(request, 'blog_post.html', context)

def CONTACT_EMAIL(request, person_slug):
    name = request.POST.get('name')
    email = request.POST.get('email')
    subject = request.POST.get('subject')
    message = request.POST.get('message')
    person_id = int(request.POST.get('person'))
    person_email = Person.objects.get(id=person_id).email

    final_message = "You have an email from : " + name + "\nEmail address : " + email + "\nSubject : " + subject + "\nMessage : " + message
    thank_you_msg = "Hi! We have received your email. We will be contacting you shortly. Thanks and take care!"

    send_mail('Contact Form', final_message, settings.EMAIL_HOST_USER, [person_email], fail_silently=False)
    send_mail('Thank you for contacting us', thank_you_msg, settings.EMAIL_HOST_USER, [email], fail_silently=False)
    return redirect('contact')

def ERROR_404(request, exception):
    return render(request, '404.html')