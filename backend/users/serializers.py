from rest_framework import serializers
from .models import StudentProfile
class SendOTPSerializer(serializers.ModelSerializer):
    class Meta:
        model = StudentProfile
        fields = ['email', 'mobile']

    def validate(self, data):
        if not data.get('mobile'):
            raise serializers.ValidationError("Mobile number is required.")
        return data
