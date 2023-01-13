# RubyonRails-BlogArticleAPI

RubyonRails-BlogArticleAPI

Create the project:
rails new blog-api

check if running:
rails s

check application rendering:
def index
render html: "Hello application index"
end
then:
rails s

create controller:
rails generate controller blogapi

create table
rails generate migration create_blogapi

in app/models:
create blogapi.rb
class Blogapi < ApplicationRecord

end

Add the columns to table in db/migrate/migration file
t.string :title
t.string :blogcontent
t.string :imagelink

run to create the table in db
rails db:migration

now in app/controller/blogapi_controller.rb
def index
render json: Blogapi.all
end

now start
rails s

in another terminal
rails c

Blogapi.all - will show the records

create records
b= Blogapi.new
b.title = "Mashable"
b.blogcontent = "Mashable is a global, multi-platform media and entertainment company. Mashable is the leading source for news, information and resources for the connected generation. Mashable reports on the importance of digital innovation and how it empowers and inspires people around the world."
b.imagelink = "https://i1.feedspot.com/200/21831.jpg?t=1657372251"
b.save

Also using create method:
Blogapi.create(title: "TechCrunch", blogcontent: "Reporting on the business of technology, startups, venture capital funding, and Silicon Valley. Technology news and analysis with a focus on founders and startup teams.Also in Tech Blogs, Business Blogs, Tech News Websites", imagelink: "https://i1.feedspot.com/200/4447421.jpg?t=1634630003")

Update records:
b = Blogapi.find(1)
b.title
=> "Mashable"
b.title = "Updated-Mashable"
=> "Updated-Mashable"
b.save

Or update using
p.update_attribute(:imagelink, "https://google.com")

p.update!(title: "TechCrunch-updated")

or delete using
p.destroy
