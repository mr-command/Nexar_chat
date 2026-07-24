from rest_framework import serializers
from .models import User


class UserSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = User
        fields = ['username','email','password']
    
    
    def create(self, validated_data):
        """
        Create and return a new `Snippet` instance, given the validated data.
        """
        return User.objects.create(**validated_data)

    # def update(self, instance, validated_data):
    #     """
    #     Update and return an existing `Snippet` instance, given the validated data.
    #     """
    #     instance.id = validated_data.get("id", instance.id)
    #     instance.username = validated_data.get("username", instance.username)
    #     instance.password = validated_data.get("password", instance.password)
    #     instance.email = validated_data.get("email", instance.email)
    #     instance.save()
    #     return instance

