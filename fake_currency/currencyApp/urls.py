from django.contrib import admin
from django.urls import path
from currencyApp import views
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path,include

urlpatterns = [ 
	path('',views.index),
	path('register/',views.register),
	path('about/',views.about),
	path('about_admin/',views.about_admin),
	path('view_feedback/',views.view_feedback),
	path('add_feedback/',views.add_feedback),
	path('details/',views.details),
	path('contact_us/',views.contact_us),
	path('remove_feedback/',views.remove_feedback),
	path('login/',views.login),
	path('view_users/',views.view_users),
	path('remove_user/',views.remove_user),
	path('logout/',views.logout),
	path('profile_admin/',views.profile_admin),
	path('edit_profile/',views.edit_profile),
	path('edit_profile_user/',views.edit_profile_user),
	path('profile_user/',views.profile_user),
	path('check_note/',views.check_note),
	path('list_note/',views.list_note),
	path('check_currency/',views.check_currency),
	path('converter/',views.converter),
	path('adm_view_currency_detail/',views.adm_view_currency_detail),
	path('adm_view_more_detail/',views.adm_view_more_detail),
	path('police_home/',views.police_home),
	path('police_reg/',views.police_reg),
	path('police_prof/',views.police_prof),
	path('police_curdetails/',views.police_curdetails),
	path('police_curmore/',views.police_curmore),
	



	







	

    
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)