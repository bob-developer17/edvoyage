from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework_simplejwt.tokens import RefreshToken
from .serializers import SendOTPSerializer

from rest_framework.permissions import AllowAny
from rest_framework.authentication import BasicAuthentication
from .models import UserProfile
from rest_framework.authentication import SessionAuthentication


class CsrfExemptSessionAuthentication(SessionAuthentication):
    def enforce_csrf(self, request):
        return  # Disable CSRF check


class SendOTPView(APIView):
    authentication_classes = [CsrfExemptSessionAuthentication, BasicAuthentication]
    permission_classes = [AllowAny]

    def post(self, request):
        # print(request.data)
        # serializer = SendOTPSerializer(data=request.data)
        # if serializer.is_valid():
        #     mobile = serializer.validated_data.get('mobile')
        #     email = serializer.validated_data.get('email', None)

        #     user_profile = UserProfile.objects.filter(mobile=mobile).first()

        #     if not user_profile:
        #         # Create new user profile only if mobile not exists
        #         try:
        #             user_profile = UserProfile.objects.create(mobile=mobile, email=email)
        #         except Exception as e:
        #             # Email unique error or others - just ignore and proceed
        #             print(f"Exception on create: {e}")
        #             user_profile = UserProfile.objects.filter(mobile=mobile).first()
        #     # If user_profile exists, do NOT update email, just use it

            return Response({"message": "OTP sent successfully."}, status=status.HTTP_200_OK)
        # print(serializer.errors)
        # return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class VerifyOTPView(APIView):
    def post(self, request):
        serializer = VerifyOTPSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.validated_data['user']
            refresh = RefreshToken.for_user(user)
            return Response({
                "message": "Login successful.",
                "access": str(refresh.access_token),
                "refresh": str(refresh),
                "user": {
                    "id": user.id,
                    "email": user.email,
                    "mobile": user.mobile,
                    "user_type": user.user_type
                }
            }, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
