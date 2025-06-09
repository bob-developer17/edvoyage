from rest_framework import serializers
from .models import UserProfile

class SendOTPSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = ['email', 'mobile']

    def validate(self, data):
        if not data.get('mobile'):
            raise serializers.ValidationError("Mobile number is required.")
        return data
