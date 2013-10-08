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

We'll use the [DBIx::Class::Manual::Example](https://metacpan.org/module/DBIx::Class::Manual::Example) example tables.

But instead of creating our Models by hand, we'll use [DBIx::Class::Schema::Loader](https://metacpan.org/module/DBIx::Class::Schema::Loader) to read our SQLite database metadata for us and create our Models on the fly.

(Perhaps you prefer the opposite? If you want to curate your Models by hand and then have DBIx::Class create your RDBMS tables on the fly then check out [DBIx::Class::Schema->deploy()](https://metacpan.org/module/DBIx::Class::Schema#deploy).)

    mkdir db
    vi db/music.sql
    sqlite db/music.sqlite < db/music.sql
    mkdir lib/MyApp/Schema
    mkdir lib/MyApp/Schema/Music
    vi lib/MyApp/Schema/Music/refresh_schema.pl
     


