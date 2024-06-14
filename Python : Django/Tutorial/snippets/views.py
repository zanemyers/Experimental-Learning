from .models import Snippet
from .permissions import IsOwnerOrReadOnly
from .serializers import SnippetSerializer, UserSerializer
from rest_framework import generics, permissions, renderers, viewsets  # , mixins
from rest_framework.decorators import api_view, action
from rest_framework.response import Response
from rest_framework.reverse import reverse
from django.contrib.auth.models import User


class SnippetViewSet(viewsets.ModelViewSet):
    """
    This viewset automatically provides `list`, `create`, `retrieve`,
    `update` and `destroy` actions.

    Additionally, we also provide an extra `highlight` action
    """
    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly, IsOwnerOrReadOnly]

    @action(detail=True, renderer_classes=[renderers.StaticHTMLRenderer])
    def highlight(self, request, *args, **kwargs):
        snippet = self.get_object()
        return Response(snippet.highlighted)

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)
        

# class SnippetList(generics.ListCreateAPIView):
#     queryset = Snippet.objects.all()
#     serializer_class = SnippetSerializer
#     permission_classes = [permissions.IsAuthenticatedOrReadOnly]
#
#     def perform_create(self, serializer):
#         serializer.save(owner=self.request.user)
#
#
# class SnippetDetail(generics.RetrieveUpdateDestroyAPIView):
#     queryset = Snippet.objects.all()
#     serializer_class = SnippetSerializer
#     permission_classes = [permissions.IsAuthenticatedOrReadOnly,
#                           IsOwnerOrReadOnly]
#
#
# # class UserList(generics.ListAPIView):
#     queryset = User.objects.all()
#     serializer_class = UserSerializer
#
#
# class UserDetail(generics.RetrieveAPIView):
#     queryset = User.objects.all()
#     serializer_class = UserSerializer
class UserViewSet(viewsets.ReadOnlyModelViewSet):
    """
    This viewset automatically provides `list` and `retrieve` actions.
    """
    queryset = User.objects.all()
    serializer_class = UserSerializer
    

# class SnippetHighlight(generics.GenericAPIView):
#     queryset = Snippet.objects.all()
#     renderer_classes = [renderers.StaticHTMLRenderer]
#
#     def get(self, request, *args, **kwargs):
#         snippet = self.get_object()
#         return Response(snippet.highlighted)
#
#
# @api_view(['GET'])
# def api_root(request, format=None):
#     return Response({
#         'users': reverse('user-list', request=request, format=format),
#         'snippets': reverse('snippet-list', request=request, format=format)
#     })
# from django.http import Http404
# from rest_framework.decorators import APIView  # , api_view
# from rest_framework.response import Response
# from rest_framework import status


# @api_view(['GET', 'POST'])
# def snippet_list(request, format=None):
#   if request.method == 'GET':
#   elif request.method == 'POST':
# class SnippetList(mixins.ListModelMixin,
#                   mixins.CreateModelMixin,
#                   generics.GenericAPIView):
#     """
#     List all code snippets, or create a new snippet.
#     """
#     queryset = Snippet.objects.all()
#     serializer_class = SnippetSerializer
#
#     # def get(self, request, format=None):
#     #     snippets = Snippet.objects.all()
#     #     serializer = SnippetSerializer(snippets, many=True)
#     #     return Response(serializer.data)
#     def get(self, request, *args, **kwargs):
#         return self.list(request, *args, **kwargs)
#
#     # def post(self, request, format=None):
#     #     serializer = SnippetSerializer(data=request.data)
#     #     if serializer.is_valid():
#     #         serializer.save()
#     #         return Response(serializer.data, status=status.HTTP_201_CREATED)
#     #     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
#     def post(self, request, *args, **kwargs):
#         return self.create(request, *args, **kwargs)


# @api_view(['GET', 'PUT', 'DELETE'])
# def snippet_detail(request, pk, format=None):
# if request.method == 'GET':
# elif request.method == 'PUT':
# elif request.method == 'DELETE':

# class SnippetDetail(mixins.RetrieveModelMixin,
#                     mixins.UpdateModelMixin,
#                     mixins.DestroyModelMixin,
#                     generics.GenericAPIView):
#     """
#     Retrieve, update, or delete a code snippet
#     """
#     queryset = Snippet.objects.all()
#     serializer_class = SnippetSerializer
#
#     # def get_object(self, pk):
#     #     try:
#     #         return Snippet.objects.get(pk=pk)
#     #     except Snippet.DoesNotExist:
#     #         return Http404
#
#     # def get(self, request, pk, format=None):
#     #     snippet = self.get_object(pk)
#     #     serializer = SnippetSerializer(snippet)
#     #     return Response(serializer.data)
#     def get(self, request, *args, **kwargs):
#         return self.retrieve(request, *args, **kwargs)
#
#     # def put(self, request, pk, format=None):
#     #     snippet = self.get_object(pk)
#     #     serializer = SnippetSerializer(snippet, data=request.data)
#     #     if serializer.is_valid():
#     #         serializer.save()
#     #         return Response(serializer.data)
#     #     return Response(serializer.errors, status=status.HTTP_204_NO_CONTENT)
#     def put(self, request, *args, **kwargs):
#         return self.update(request, *args, **kwargs)
#
#     # def delete(self, request, pk, format=None):
#     #     snippet = self.get_object(pk)
#     #     snippet.delete()
#     #     return Response(status=status.HTTP_204_NO_CONTENT)
#     def delete(self, request, *args, **kwargs):
#         return self.destroy(request, *args, **kwargs)
#
