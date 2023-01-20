from django.contrib import admin
from . models import *


class About_Me_shorts_Admin(admin.TabularInline):
    model = Achievements
class Skills_Admin(admin.TabularInline):
    model = Skills
class Experience_Admin(admin.TabularInline):
    model = Experience
class Education_Admin(admin.TabularInline):
    model = Education
class Social_Media_links_Admin(admin.TabularInline):
    model = Social_Media_links
class Person_Admin(admin.ModelAdmin):
    inlines = ( About_Me_shorts_Admin, Skills_Admin, Experience_Admin, Education_Admin, Social_Media_links_Admin )

class Project_slide_Admin(admin.TabularInline):
    model = Project_slide
class Project_Admin(admin.ModelAdmin):
    inlines = (Project_slide_Admin,)


admin.site.register(Person, Person_Admin)
admin.site.register(Project, Project_Admin)
admin.site.register(Project_Category)
admin.site.register(Blog)
admin.site.register(Social_Media)