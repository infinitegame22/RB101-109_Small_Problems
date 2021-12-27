#Both methods can be found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an instance method.

#Both methods can be found on the documentation page for the File class in the Core API secion.  File::path is a class method, while File#path is an instance method.

#Both methods can be found on the documentation page for the File class in the Core API section.  File::path is a class method, while File#path is an instance method.

#Both methods can be found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an object method.

#Both methods can bet found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an object method.

#Class methods are called on the class, while instance methods are called on onjects. Thus:
puts File.path('bin')
#calls the class method File::path since we're calling it on the File class, while:
f = File.new('my-file.txt')
puts f.path
#calls the instance method File#path since we're claling it on an object of the File class, namely f.