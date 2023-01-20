from django.urls import path
from main import views

urlpatterns = [
    path('<slug:person_slug>/', views.HOME, name='home'),
    path('<slug:person_slug>/about/', views.ABOUT, name='about'),
    path('<slug:person_slug>/portfolio/', views.PORTFOLIO, name='portfolio'),
    path('<slug:person_slug>/contact/', views.CONTACT, name='contact'),
    path('<slug:person_slug>/blog/', views.BLOG, name='blog'),
    path('<slug:person_slug>/blog/<slug:blog_slug>', views.BLOG_DETAIL, name='blog_detail'),
    path('contact/contact-mail-send/', views.CONTACT_EMAIL, name='send_email')
]