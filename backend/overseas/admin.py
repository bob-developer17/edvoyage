from django.contrib import admin
from .models import Country, University, CounselingBooking
# Register your models here.

admin.site.register(Country)
admin.site.register(University)
admin.site.register(CounselingBooking)


