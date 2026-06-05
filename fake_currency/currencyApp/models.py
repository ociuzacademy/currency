from django.db import models

# Create your models here.
class Tbl_User(models.Model):
	name    				=models.CharField(max_length=100,default='')
	password				=models.CharField(max_length=50,default='')
	email					=models.CharField(max_length=300,default='')
	phone					=models.CharField(max_length=300,default='')
	user_type				=models.CharField(max_length=20,default='')
	place					=models.CharField(max_length=20,default='')
	def str__(self):
		return self.name
	
class Tbl_Note(models.Model):
	name    				=models.CharField(max_length=300,default='')
	slnumber				=models.CharField(max_length=50,default='')
	note_type				=models.CharField(max_length=300,default='')
	amount					=models.CharField(max_length=300,default='')
	
class Tbl_Currency(models.Model):
    user_id = models.ForeignKey(Tbl_User,on_delete=models.CASCADE, blank=True, null=True)
    name = models.CharField(max_length=300,default='')
    image = models.ImageField(upload_to='currency/',default='')
    result = models.CharField(max_length=50,default='')

class Tbl_Feedback(models.Model):
	name    				=models.CharField(max_length=300,default='')
	email    				=models.CharField(max_length=300,default='')
	subject    				=models.CharField(max_length=300,default='')

class Tbl_police(models.Model):
	name    				=models.CharField(max_length=100,default='')
	password				=models.CharField(max_length=50,default='')
	email					=models.CharField(max_length=300,default='')
	phone					=models.CharField(max_length=300,default='')
	user_type				=models.CharField(max_length=20,default='')
	place					=models.CharField(max_length=20,default='')
	img                     =models.ImageField(upload_to = 'policeimg/',default='')
	