MyApp
=====

Minimal demo of [Catalyst](http://www.catalystframework.org/) best practices

Create a Catalyst app

    catalyst.pl MyApp::WebApp

Run it:

    MyApp-WebApp/script/myapp_webapp_server.pl
    http://0:3000/


Add an Independent-of-Everything Model
--------------------------------------

Create it:

    mkdir -p lib/MyApp/Model
    vi lib/MyApp/Model/Dog.pm

Test it:

    mkdir -p t/model
    vi t/model/Dog.t

Use it inside Catalyst:

    vi MyApp-WebApp/lib/MyApp/WebApp/Model/Dog.pm
    MyApp-WebApp/script/myapp_webapp_create.pl Controller Dog
    vi MyApp-WebApp/lib/MyApp/WebApp/Controller/Dog.pm
    http://0.0.0.0:3000/dog/talk   # woof

End-to-end testing (through Catalyst):

    vi MyApp-WebApp/t/controller_Dog.t


Add a [DBIx::Class](https://metacpan.org/module/DBIx::Class) Model
-----------------------

We'll use the [DBIx::Class::Manual::Example](https://metacpan.org/module/DBIx::Class::Manual::Example) example tables.

But instead of creating our Models by hand, we'll use [DBIx::Class::Schema::Loader->make_schema_at()](https://metacpan.org/module/DBIx::Class::Schema::Loader) to read our SQLite database metadata for us and create our Models on the fly.

(Perhaps you prefer the opposite? If you want to curate your Models by hand and then have DBIx::Class create your RDBMS tables on the fly then take a look at [DBIx::Class::Schema->deploy()](https://metacpan.org/module/DBIx::Class::Schema#deploy).)

{If you prefer neither, feel free to do both sides by hand.  :) )

    mkdir db
    vi db/music.sql
    sqlite db/music.sqlite < db/music.sql
    mkdir -p lib/MyApp/Schema/Music
    cd lib/MyApp/Schema/Music
    vi refresh_schema.pl
    perl refresh_schema.pl

So now we have a web-agnostic Model auto-generated from our RDBMS. 
(Yes, you can still customize it and re-run the refresher anytime to pick
up any DB changes.) Neato. Let's hook it up to Catalyst:

    vi MyApp-WebApp/lib/MyApp/WebApp/Model/Music.pm
    MyApp-WebApp/script/myapp_webapp_create.pl Controller Music
    vi MyApp-WebApp/lib/MyApp/WebApp/Controller/Music.pm
 
 
Use [Template::Toolkit](http://www.template-toolkit.org/)
-----------------------

    MyApp-WebApp/script/myapp_webapp_create.pl View TT
    vi MyApp-WebApp/root/layout.tt2



