MyApp
=====

Minimal demo of Catalyst best practices

Create a Catalyst app

    catalyst.pl MyApp::WebApp

Run it:

    MyApp-WebApp/script/myapp_webapp_server.pl
    http://0:3000/


Add an Independent-of-Everything Model
--------------------------------------

Create it:

    mkdir lib
    mkdir lib/MyApp
    mkdir lib/MyApp/Model
    vi lib/MyApp/Model/Dog.pm

Test it:

    mkdir t
    mkdir t/model
    vi t/model/Dog.t

Use it inside Catalyst:

    vi MyApp-WebApp/lib/MyApp/WebApp/Model/Dog.pm
    MyApp-WebApp/script/myapp_webapp_create.pl Controller Dog
    vi MyApp-WebApp/lib/MyApp/WebApp/Controller/Dog.pm
    http://0.0.0.0:3000/dog/talk   # woof

End-to-end testing (through Catalyst):

    vi MyApp-WebApp/t/controller_Dog.t


Add a DBIx::Class Model
-----------------------



