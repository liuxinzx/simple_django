from django.contrib import admin

# Register your models here.

from  .models import Student

class StudentAdmin(admin.ModelAdmin):
    list_display = ['number','name','age']
    list_editable = ['name','age']

admin.site.register(Student,StudentAdmin)
