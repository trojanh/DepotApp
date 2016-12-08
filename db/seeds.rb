# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create!([
  {
    title: 'Programming Ruby 1.9 & 2.0',
    description:
    %{<p>
    Ruby is the fastest growing and most exciting dynamic language
    out there. If you need to get working programs delivered fast,
    you should add Ruby to your toolbox.
    </p>},
    image_url: 'ruby.jpg',
    price: 49.95
  },
  {
    title: 'Download rails40/depot_r/test/test_helper.rb',
    description:
    %{<p>
    Note that the setup() method will call login_as() only if session is defined. This
    prevents the login from being executed in tests that do not involve a controller.
    We show our customer and are rewarded with a big smile and a request:
    could we add a sidebar and put links to the user and product administration
    stuff in it? And while we’re there, could we add the ability to list and delete
    administrative users? You betcha!
    </p>},
    image_url: 'rtp.jpg',
    price: 115.2
  },

  {
    title: 'Kiprosh Testimonial',
    description:
    %{<p>
    Rohan and his team at Kiprosh were invaluable in building multiple products, affordably and with high quality. Kiprosh engineers are highly skilled in Rails and other platforms, professional, dependable, and offer great value. I definitely recommend Rohan and Kiprosh to anyone needing an outsource engineering group. Joshua DeFord, Product Management Leader
    </p>},
    image_url: 'kip.jpg',
    price: 88.25
  },
])
p "Created #{Product.count} Product"

User.create!([
  {
    name: 'admin',
    password_digest: 'admin'
  },
])
p "Created #{User.count} user"
