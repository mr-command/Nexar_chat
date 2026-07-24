from django.shortcuts import render
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from .serializers import UserSerializer
from .models import User


class UserRegisterView(APIView):
    
    def post(self,request):
        
        serializer = UserSerializer(
            data=request.data
        )

        if serializer.is_valid():

            user = serializer.save()

            return Response(
                UserSerializer(user).data,
                status=201
            )

        return Response(
            serializer.errors,
            status=400
        )



