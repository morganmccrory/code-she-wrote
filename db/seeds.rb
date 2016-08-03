# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat1 = Category.create(name: "Women in Tech")
cat2 = Category.create(name: "Flask")
cat3 = Category.create(name: "Python")
cat4 = Category.create(name: "MongoDB")

post1 = Post.create(title: 'How To Get Ahead as a Woman in Tech', content: 'It’s no secret that there is a gender gap in the tech industry. Women make up 57% of the workforce, but only make up 25% of the tech industry (<a href="https://medium.com/matter/this-is-the-last-thing-youll-ever-need-to-read-about-sexism-in-tech-56b9a3a77af0#.xp0ersed0">source</a>). There are numerous reasons as to why there a few so few women in tech, ranging from a lack of awareness to an intimidating culture. However, for this blog post I would like to focus on how women in tech can distinguish themselves not as an anomaly, but as part of the team. I believe that we’ll make stronger strides to bridge this gap by not only recruiting more women into the field, but also by fostering the growth of the women who are already here.<br><br>

  <b>1. Do your research.</b> The best way to make your mark is to be so good at what you do that no one can knock you down. Do your research and write code endlessly. I say “research and code” instead of “be confident” because if you have spent one thousand hours doing something, that confidence is going to come naturally. It won’t be fake or forced, and people will be able to see that. This doesn’t mean that once you put in one thousand hours of coding you’re done. It is important to continue this learning process throughout your career. There are new languages coming out constantly, and always something new to learn. A great way to keep your skills fresh (while still maintaining a full-time job) is to always have a side project. This will allow you to experiment with different languages for better or for worse, and help you develop new skills that can then translate back into your full-time job. Do you feel really strong in Angular, but haven’t gotten a chance to try out React? Side project. Are you great in Ruby and Python, but Java still seems daunting? Side project. If your side project is something that genuinely interests you, it can also be really fun.<br><br>

    <b>2. Focus on providing value.</b> I’ll be the first one to admit that writing this very blog post was a huge challenge for me. My perfectionism came out, and I sat staring at the computer screen with writer’s block for about two hours. I needed to have the perfect, attention-grabbing opening line, and it was hard for me to accept that I might write something that was anything but award-winning. As I did finally start to write though, I realized that I was chasing a mirage –  and that’s OK. As long as it provides some type of value to someone who reads it – then I’ve done my job. It’s ironic that it is harder for me to accept perfectionism about writing blog posts than it is about writing code, but I acknowledge that for some people the opposite will be true. And as women, we tend to be more of the ‘perfectionist’ mindset, and guess what – it’s a recipe for disaster. An unfortunate byproduct of perfectionism is that you end up not doing anything at all because it won’t be ‘perfect’. Write imperfect code. Write an imperfect conference speech. Write an imperfect blog post. Just as long as you get it done. (And then refactor later.)<br><br>

    <b>3. Assert your presence on the team.</b> It’s hard to feel like you don’t have to prove yourself when you’re the only woman on a team. However, use your difference in perspective as an advantage. This means speaking up during biweekly retrospective meetings and contributing your point of view (and perhaps more importantly, knowing what your point of view is.) This means asking for help when you need it, but after trying to troubleshoot the issue yourself first. This means standing up for yourself if you are thrown into a situation in which the objectives aren’t immediately clear. If you find someone over-explaining a concept to you, politely say, “Thank you for your help – I can take it from here.” Be firm and direct, but be kind. Asserting your presence also means spending time with your co-workers – even if that is just making small talk around the coffee machine or posting a funny tweet in a group HipChat room. By spending time getting to know them, and giving them an opportunity to get to know you, you can diminish both their stereotypes and your own.<br><br>

      <b>4. Stay involved.</b> There are a number of organizations that will help you stay connected to the broader women in tech community. By joining one of these organizations, you can be a mentor for a young woman starting out, or find a mentor for yourself who has experience in the tech industry. Staying involved also helps combat Imposter Syndrome – which most people, both men and women, have likely experienced at some point in their careers. People who suffer from Imposter Syndrome are unable to internalize their accomplishments. They attribute successes to good luck or somehow fooling everyone. I felt this way shortly after I started here at SPR. I began working on my first project using Java and Angular, two languages with which I had little experience at the time. However, lucky for me, I also mentor people who are just beginning to learn Ruby, a language with which I have much more experience and confidence. Helping aspiring developers to solve Fizzbuzz problems and write  Fibonacci sequences made me realize how much I do know. It’s important to remember that you didn’t get to where you are because of a fluke accident – you got there because you worked hard. Staying involved and not only having a mentor, but also becoming a mentor, helps to keep your self-image in check.<br><br>

      The gender gap in the tech industry will not be fixed overnight. However, I am confident that given the proper platform, women can distinguish themselves as the ones to watch out for.', categories: [cat1])

post2 = Post.create(title: 'Creating a CRUD App with Flask and MongoDB', content: 'As I was starting to build my latest side project, a pro/con list app inspired by my indecisive friends, I realized two things. First, I realized that my schema would work better as a NoSQL database rather than as a relational database. Second, I didn\'t need a large framework, and actually a "microframework" would serve me better.
<br><br>
There are many great tutorials on using Python with Flask and MongoDB, but as I was going through them I noticed that I had to pull from a ton of different resources and dig A LOT more than I wanted to. I hope this tutorial will help other developers who are encountering similar issues.
<br><br>
I wrote this assuming that this is your first time working with both Flask and MongoDB. You should have at least a basic understanding of Python, and already have it installed on your computer. (If you do not have it installed, <a href="https://www.python.org/downloads/">go here</a>.) You will also need to have <a href="http://brew.sh/">Homebrew</a> installed.
<br>
<h3>What We Are Building</h3>
We are building a pro/con list app that will allow users to create lists, add pros and cons to a list, update a list, and delete a list (your basic CRUD app).<br><br>
Here are the topics we will cover:
<ul class="tutorial-nav">
  <li><a href="#create-initial-files">Create Initial Files</a></li>
  <li><a href="#define-schema">Define the Schema</a></li>
  <li><a href="#viewing-list">Viewing a List</a></li>
  <li><a href="#creating-list">Creating a New List</a></li>
  <li><a href="#updating-list">Updating a List</a></li>
  <li><a href="#deleting-list">Deleting a List</a></li>
  <li><a href="#creating-pros-cons">Creating Pros and Cons in a List</a></li>
</ul>
<h3>Getting Started</h3>
<ol>
  <b><li>Install the latest version of MongoDB</li></b><br>
  <code> brew update </code><br>
  <code> brew install mongodb </code><br><br>

  <b><li>Run MongoDB</li></b><br>
  <code>mkdir -p /data/db</code><br>
  If you are having permission errors, try:
  <code>sudo mkdir -p /data/db</code><br><br>
  <code>brew services start mongodb</code><br>
  To stop mongodb, you can run:
  <code>brew services stop mongodb</code><br><br>

  <b><li>Set up your virtual environment</li></b><br>
  The name of this project is going to be <b>pros_and_cons</b>, so make sure to use your project name when you see this for the rest of the tutorial.<br><br>
  <code>pip install virtualenv</code><br>
  <code>virtualenv pros_and_cons</code><br>
  <code>source pros_and_cons/bin/activate</code><br><br>

  <b><li>Install packages</li></b><br>
  <code>pip install flask</code><br>
  <code>pip install flask-script</code><br>
  <code>pip install WTForms</code><br>
  <code>pip install mongoengine</code><br>
  <code>pip install flask_mongoengine</code><br>
  <code>pip install python-slugifier</code><br><br>
</ol>
<h3 id="create-initial-files">Create Initial Files</h3>
<ol>
  <b><li>Create __init__.py in your project folder</li></b><br>
  Add the following code. (Note: While it may be tempting to copy/paste, you will gain a better understanding of how the framework works if you manually type it in! :) )<br><br>
  <code>
    from flask import Flask<br>
    from flask_mongoengine import MongoEngine<br><br>

    app = Flask(__name__)<br>
    app.config["MONGODB_SETTINGS"] = {\'DB\': "pros_and_cons"}<br>
    app.config["SECRET_KEY"] = "S3cr3tK3y"<br><br>

    db = MongoEngine(app)<br><br>

    if __name__ == "__main__":<br>
    &nbsp;&nbsp;app.run(debug=True)
  </code><br><br>

  <b><li>Create manage.py in your project folder</li></b><br>
  Add the following code to the file.<br><br>
  <code>
    import os, sys<br>
    sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), \'..\')))<br><br>

    from flask_script import Manager, Server<br>
    from pros_and_cons import app<br><br>

    manager = Manager(app)<br><br>

    manager.add_command("runserver", Server(<br>
        use_debugger = True,<br>
        use_reloader = True,<br>
        host = \'0.0.0.0\')<br>
    )<br><br>

    if __name__ == "__main__":<br>
    &nbsp;&nbsp;manager.run()
  </code><br><br>
</ol>
<h3 id="define-schema">Define the Schema</h3>
In this app, we will have three different documents, or \'models\', that will be used. This code will be put into a file called <b>models.py</b>.
<br><br>
You will also notice that we are importing slugify and have overwritten the standard \'save\' method. We will be using slugs in this app as part of the URL and to locate a list in the database. It will take the name of a list (ie. "Should I Move to Seattle?!") and turn it into a slug (ie. "should-i-move-to-seattle"). By overwriting the \'save\' method, this allows the slugs to be generated automatically when a new list is created, as opposed to having the user create them manually.
<br><br>
<code>import datetime<br>
from flask import url_for<br>
from pros_and_cons import db<br>
from slugify import slugify
<br><br>
class Pro(db.EmbeddedDocument):<br>
  &nbsp;&nbsp;created_at = db.DateTimeField(default=datetime.datetime.now, required=True)<br>
  &nbsp;&nbsp;body = db.StringField(required=True)
<br><br>
class Con(db.EmbeddedDocument):<br>
  &nbsp;&nbsp;created_at = db.DateTimeField(default=datetime.datetime.now, required=True)<br>
  &nbsp;&nbsp;body = db.StringField(required=True)
<br><br>
class List(db.Document):<br>
  &nbsp;&nbsp;created_at = db.DateTimeField(default=datetime.datetime.now, required=True)<br>
  &nbsp;&nbsp;name = db.StringField(max_length=255, required=True, unique=True)<br>
  &nbsp;&nbsp;slug = db.StringField(unique=True)<br>
  &nbsp;&nbsp;pros = db.ListField(db.EmbeddedDocumentField(\'Pro\'))<br>
  &nbsp;&nbsp;cons = db.ListField(db.EmbeddedDocumentField(\'Con\'))
<br><br>
  def save(self, *args, **kwargs):<br>
  &nbsp;&nbsp;if not self.slug:<br>
  &nbsp;&nbsp;&nbsp;&nbsp;self.slug = slugify(self.name)<br>
  &nbsp;&nbsp;ret = super(List, self).save(*args, **kwargs)
<br><br>
  def get_absolute_url(self):<br>
  &nbsp;&nbsp;return url_for(\'list\', kwargs={"slug": self.slug})
<br><br>
  def __unicode__(self):<br>
  &nbsp;&nbsp;return self.name
<br><br>
  meta = {<br>
  &nbsp;&nbsp;\'allow_inheritance\': True,<br>
  &nbsp;&nbsp;\'indexes\': [\'-created_at\', \'slug\'],<br>
  &nbsp;&nbsp;\'ordering\': [\'-created_at\']<br>
  }
</code>
<h3>Add Dummy Data</h3>
Now we are going to add dummy data through the shell. We will create one list, and add one pro and one con to the list. In your terminal, type:<br><br>
<code>python manage.py shell</code>
<br><br>
Once in the shell, add the following sequence of commands.
<br><br>
<code>
  IN [1]: from pros_and_cons.models import *
  <br><br>
  IN [2]: List.objects.all()<br>
  OUT [2]: []
  <br><br>
  IN [3]: list = List(name="Hello World!")
  <br><br>
  IN [4]: list.save()
  <br><br>
  IN [5]: List.objects.all()<br>
  OUT [5]: [&lt;List: Hello World!&gt;]
  <br><br>
  IN [6]: list.pros<br>
  OUT [6]: []
  <br><br>
  IN [7]: pro = Pro(body="This is a pro.")
  <br><br>
  IN [8]: list.pros.append(pro)
  <br><br>
  IN [9]: list.pros<br>
  OUT [9]: [&lt;Pro: Pro object&gt;]
  <br><br>
  IN [10]: list.save()
  <br><br>
  IN [11]: con = Con(body="This is a con.")
  <br><br>
  IN [12]: list.cons.append(con)
  <br><br>
  IN [13]: list.cons<br>
  OUT [13]: [&lt;Con: Con object&gt;]
  <br><br>
  IN [14]: list.save()
  <br><br>
  IN [15]: quit()
</code>
<h3 id="viewing-list">Viewing a List</h3>
<ol>
  <b><li>Create views.py in your project folder</li></b>
  <br>
  Now that we have some data in the database, we can create our views and begin seeing our app in a web browser. Create a new file called <b>views.py</b>, which is similar to a routes file, and add the following:<br><br>
  <code>
    from flask import render_template, redirect, request, url_for<br>
    from pros_and_cons import app<br>
    from pros_and_cons.models import List, Pro, Con
    <br><br>
    @app.route("/")<br>
    def home():<br>
    &nbsp;&nbsp;return render_template("lists/index.html", lists=List.objects.all())
    <br><br>
    @app.route("/lists/&lt;slug&gt;")<br>
    def show_list(slug):<br>
    &nbsp;&nbsp;list = List.objects.get(slug=slug)<br>
    &nbsp;&nbsp;return render_template("lists/show.html", list=list)
  </code>
  <br><br>
  <b><li>Import the views into __init__.py</li></b>
  <br>
  Open up the __init__.py file that we previously created, and add <code>import pros_and_cons.views</code> right above the "if" statement. <b>The entire file should now look like this:</b>
  <br><br>
  <code>
    from flask import Flask<br>
    from flask_mongoengine import MongoEngine
    <br><br>
    app = Flask(__name__)<br>
    app.config["MONGODB_SETTINGS"] = {\'DB\': "pros_and_cons"}<br>
    app.config["SECRET_KEY"] = "S3cr3tK3y"
    <br><br>
    db = MongoEngine(app)
    <br><br>
    import pros_and_cons.views
    <br><br>
    if __name__ == "__main__":<br>
    &nbsp;&nbsp;app.run(debug=True)
  </code>
  <br><br>
  <b><li>Create templates folder and add initial html files</li></b>
  <br>
  Create a new folder called <b>templates</b> and within that folder, create another new folder called <b>lists</b>. In this lists folder, we will create two html files, which were already referenced in our views. The first file will be <b>index.html</b>, and we can add some boilerplate html to display all of the lists that have been created.<br><br>
  <code>
    &lt;h2&gt;Pros and Cons&lt;/h2&gt;<br>
    {% for list in lists %}<br>
    &nbsp;&nbsp;&lt;h3&gt;&lt;a href="{{ url_for(\'show_list\', slug=list.slug) }}"&gt;{{ list.name }}&lt;/a&gt;&lt;/h3&gt;<br>
    {% endfor %}
  </code>
  <br><br>
  The second file will be <b>show.html</b> to view the details of individual lists.<br><br>
  <code>
    &lt;h1&gt;{{ list.name }}&lt;/h1&gt;<br>
    &lt;h4&gt;Pros&lt;/h4&gt;<br>
    &lt;ol&gt;<br>
    &nbsp;&nbsp;{% for pro in list.pros %}<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;{{ pro.body }}&lt;/li&gt;<br>
    &nbsp;&nbsp;{% endfor %}<br>
    &lt;/ol&gt;<br>
    &lt;h4&gt;Cons&lt;/h4&gt;<br>
    &lt;ol&gt;<br>
    &nbsp;&nbsp;{% for con in list.cons %}<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;{{ con.body }}&lt;/li&gt;<br>
    &nbsp;&nbsp;{% endfor %}<br>
    &lt;/ol&gt;<br>
    &lt;br&gt;&lt;br&gt;<br>
    &lt;a href="/"&gt;Back&lt;/a&gt;<br>
  </code>
  <br>
  To start the app, run the following command in the terminal and we can already see it working:<br><br>
  <code> python manage.py runserver</code>
</ol>
<h3 id="creating-list">Creating a New List</h3>
Now that we can view the lists, the next new feature we will implement is creating a new list.
<ol>
  <b><li>Add the following to your views.py file</li></b>
  <br>
  <code>
    @app.route("/lists/create", methods=["GET", "POST"])<br>
    def create_list():<br>
    &nbsp;&nbsp;if request.method == "GET":<br>
    &nbsp;&nbsp;&nbsp;&nbsp;return render_template("lists/new.html")<br>
    &nbsp;&nbsp;else:<br>
    &nbsp;&nbsp;&nbsp;&nbsp;name = request.form["name"]
    <br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;list = List(name=name)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;list.save()
    <br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;return redirect("/")
  </code>
  <br><br>
  <b><li>In your templates/lists directory, add a file called new.html</li></b>
  <br>
  And add this code:<br><br>
  <code>
    &lt;form action="/lists/create" method="POST"&gt;<br>
    &nbsp;&nbsp;&lt;label>Name&lt;/label&gt;<br>
    &nbsp;&nbsp;&lt;input type="text" name="name"&gt;
    <br><br>
    &nbsp;&nbsp;&lt;input type="submit" value="Create"&gt;<br>
    &lt;/form&gt;<br>
    &lt;a href="/"&gt;Back&lt;/a&gt;
  </code>
  <br><br>
  <b><li>Add a link in your index.html file</li></b><br>
  <code>
    &lt;a href="/lists/create"&gt;Create new list&lt;/a&gt;
  </code>
  <br><br>
  If you didn\'t start the app in the previous step, go ahead and start it and test out your new feature!<br><br>
  <code> python manage.py runserver</code>
</ol>
<h3 id="updating-list">Updating an Existing List</h3>
We will implement features to allow users to edit the name and slug of a list.
<ol>
  <b><li>Add this code to the views.py file</li></b><br>
  <code>
    @app.route("/lists/<slug>/edit", methods=["GET", "POST"])<br>
    def update_list(slug):<br>
    &nbsp;&nbsp;if request.method == "GET":<br>
    &nbsp;&nbsp;&nbsp;&nbsp;list = List.objects.get(slug=slug)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;return render_template("lists/edit.html", list=list)<br>
    &nbsp;&nbsp;else:<br>
    &nbsp;&nbsp;&nbsp;&nbsp;name = request.form["name"]<br>
    &nbsp;&nbsp;&nbsp;&nbsp;slug = request.form["slug"]
    <br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;list = List.objects.get(slug=slug)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;list.update(name=name, slug=slug)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;list.save()
    <br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;return redirect("/")
  </code>
  <br><br>
  <b><li>In your templates/lists directory, add a file called edit.html</li></b><br>
  <code>
    &lt;form action="{{ url_for(\'update_list\', slug=list.slug) }}" method="POST"&gt;<br>
    &nbsp;&nbsp;&lt;label&gt;Name&lt;/label&gt;<br>
    &nbsp;&nbsp;&lt;input type="text" name="name" value={{ list.name }} &gt;
    <br><br>
    &nbsp;&nbsp;&lt;label&gt;Slug&lt;/label&gt;<br>
    &nbsp;&nbsp;&lt;input type="text" name="slug" value={{ list.slug }}&gt;
    <br><br>
    &nbsp;&nbsp;&lt;input type="submit" value="Update"&gt;<br>
    &lt;/form&gt;<br>
    &lt;a href="/"&gt;Back&lt;/a&gt;
  </code>
  <br><br>
  <b><li>Add a link in your show.html file</li></b><br>
  <code>
    &lt;a href="{{ url_for(\'update_list\', slug=list.slug) }}"&gt;Edit List&lt;/a&gt;
  </code>
  <br><br>
  You should now be able to update an existing list!
</ol>
<h3 id="deleting-list">Deleting a List</h3>
<ol>
  <b><li>Add this route to your views.py file</li></b><br>
  <code>
    @app.route("/lists/&lt;slug&gt;/delete", methods=["POST"])<br>
    def delete_list(slug):<br>
    &nbsp;&nbsp;list = List.objects.get(slug=slug)<br>
    &nbsp;&nbsp;list.delete()<br>
    &nbsp;&nbsp;return redirect("/")<br>
  </code>
  <br><br>
  <b><li>Add a form to the bottom of your show.html file</li></b><br>
  <code>
    &lt;form action="{{ url_for(\'delete_list\', slug=list.slug) }}" method="POST"&gt;<br>
    &nbsp;&nbsp;&lt;input type="hidden" name="_method" value="DELETE" /&gt;<br>
    &nbsp;&nbsp;&lt;input type="submit" value="Delete" /&gt;<br>
    &lt;/form&gt;
  </code>
  <br><br>
  That\'s it! You can now delete a list. We are done implementing our basic CRUD capabilities, however, we are still not able to add pros and cons to a list. Let\'s go ahead and implement this feature.
</ol>
<h3 id="creating-pros-cons">Creating Pros and Cons in a List</h3>
This feature will be slightly different from the others because the pros and cons are embedded documents. However, the basic structure will remain the same.
<ol>
  <b><li>Add routes to your views.py file</li></b><br>
  The route to create a pro is below. Creating a con will be the exact same code, just replacing "pro" with "con".<br><br>
  <code>
    @app.route("/lists/<slug>/pros/create", methods=["GET", "POST"])<br>
    def create_pro(slug):<br>
    &nbsp;&nbsp;if request.method == "GET":<br>
    &nbsp;&nbsp;&nbsp;&nbsp;list = List.objects.get(slug=slug)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;return render_template("/lists/pros/new.html", list=list)<br>
    &nbsp;&nbsp;else:<br>
    &nbsp;&nbsp;&nbsp;&nbsp;slug = request.form["slug"]<br>
    &nbsp;&nbsp;&nbsp;&nbsp;body = request.form["body"]<br>
    &nbsp;&nbsp;&nbsp;&nbsp;pro = Pro(body=body)
    <br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;list = List.objects.get(slug=slug)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;list.pros.append(pro)<br>
    &nbsp;&nbsp;&nbsp;&nbsp;list.save()
    <br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;return redirect("/lists/" + slug)
  </code>
  <br><br>
  <b><li>Add folders and new.html pages</li></b><br>
  In your templates/lists directory, now add a <b>pros</b> folder and a <b>cons</b> folder. In each of these folders, create two <b>new.html</b> files, one for pros and one for cons. The <b>templates/lists/pros/new.html</b> code is listed below. Again, the cons/new.html file will be the exact same code, but replacing "pro" with "con".<br><br>
  <code>
    &lt;form action="/lists/&lt;slug>/pros/create" method="POST"&gt;<br>
    &nbsp;&nbsp;&lt;label>Pro&lt;/label&gt;<br>
    &nbsp;&nbsp;&lt;input type="text" name="body"&gt;
      <br><br>
    &nbsp;&nbsp;&lt;input type="hidden" name="slug" value={{ list.slug }}&gt;
      <br><br>
    &nbsp;&nbsp;&lt;input type="submit" value="Add"&gt;<br>
    &lt;/form&gt;<br>
    &lt;a href="/"&gt;Back&lt;/a&gt;
  </code>
  <br><br>
  <b><li>Add links in your lists/show.html file to add new pros and cons</li></b><br>
  <code>
    &lt;a href="{{ url_for(\'create_pro\', slug=list.slug) }}"&gt;Add another pro&lt;/a&gt;
  </code>
  <br><br>
  Your show.html file should now look something like this:<br><br>
  <code>
    &lt;h1&gt;{{ list.name }}&lt;/h1&gt;<br>
    &lt;a href="{{ url_for(\'update_list\', slug=list.slug) }}"&gt;Edit List&lt;/a&gt;<br>
    &lt;h4&gt;Pros&lt;/h4&gt;<br>
    &lt;ol&gt;<br>
    &nbsp;&nbsp;{% for pro in list.pros %}<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;{{ pro.body }}&lt;/li&gt;<br>
    &nbsp;&nbsp;{% endfor %}<br>
    &lt;/ol&gt;<br>
    &lt;a href="{{ url_for(\'create_pro\', slug=list.slug) }}"&gt;Add another pro&lt;/a&gt;<br>
    &lt;h4&gt;Cons&lt;/h4&gt;<br>
    &lt;ol&gt;<br>
    &nbsp;&nbsp;{% for con in list.cons %}<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;{{ con.body }}&lt;/li&gt;<br>
    &nbsp;&nbsp;{% endfor %}<br>
    &lt;/ol&gt;<br>
    &lt;a href="{{ url_for(\'create_con\', slug=list.slug) }}"&gt;Add another con&lt;/a&gt;<br>
    &lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;<br>
    &lt;form action="{{ url_for(\'delete_list\', slug=list.slug) }}" method="POST"&gt;<br>
    &nbsp;&nbsp;&lt;input type="hidden" name="_method" value="DELETE" /&gt;<br>
    &nbsp;&nbsp;&lt;input type="submit" value="Delete" /&gt;<br>
    &lt;/form&gt;<br>
    &lt;a href="/"&gt;Back&lt;/a&gt;<br>
  </code>
</ol>
<h3>Wrapping Up</h3>
You should now have a fully functional CRUD app using Flask and MongoDB, including a create feature for embedded documents! In case you missed it earlier, to run your app type this into the terminal:<br><br>
<code>
  python manage.py runserver
</code>
<br><br>
Your final file structure should look like this:
<br><br>
<code>
  pros_and_cons<br>
  &nbsp;&nbsp;__init__.py<br>
  &nbsp;&nbsp;manage.py<br>
  &nbsp;&nbsp;models.py<br>
  &nbsp;&nbsp;views.py<br>
  &nbsp;&nbsp;/templates<br>
  &nbsp;&nbsp;&nbsp;&nbsp;/lists<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;edit.html<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;index.html<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new.html<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;show.html<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/pros<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new.html<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/cons<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new.html
</code>
<br><br>
Please feel free to comment with any questions or suggestions. Thanks!', categories: [cat2, cat3, cat4])