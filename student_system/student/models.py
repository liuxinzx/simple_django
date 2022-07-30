from django.db import models

# Create your models here.
class Student(models.Model):
    number = models.CharField(verbose_name='学号',max_length=20,null=False)
    name = models.CharField(verbose_name='姓名', max_length=35, null=False)
    age = models.IntegerField(verbose_name='年龄')
    chi = models.FloatField(verbose_name='语文')
    math = models.FloatField(verbose_name='数学')
    enf = models.FloatField(verbose_name='英语')
    describe = models.TextField(verbose_name='描述')
    date = models.DateField(verbose_name='日期')
    def __str__(self):
        return self.number+"-"+self.name

    class Meta:
        db_table = 'students' #原 student-student
        verbose_name = '学生'
        verbose_name_plural = '学生们'
