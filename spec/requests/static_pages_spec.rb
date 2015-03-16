require 'spec_helper'
describe "Static pages" do
describe "Home page" do
it "should have the h1 'e Transcripts'" do
visit '/static_pages/home'
page.should have_selector('h1', :text => 'e Transcripts')
end
it "should have the title 'Home'" do
visit '/static_pages/home'
page.should have_selector('title',
:text => "Ruby on Rails Tutorial Sample App | Home")
end
end
describe "Help page" do
it "should have the h1 'Need Help'" do
visit '/static_pages/help'
page.should have_selector('h1', :text => 'Need Help')
end
it "should have the title 'Help'" do
visit '/static_pages/help'
page.should have_selector('title',
:text => "Ruby on Rails Tutorial Sample App | Help")
end
end
describe "Login page" do
it "should have the h2 'Sign In'" do
visit '/static_pages/login'
page.should have_selector('h2', :text => 'Sign In')
end
it "should have the title 'LogIn'" do
visit '/static_pages/login'
page.should have_selector('title',
:text => "Ruby on Rails Tutorial Sample App | LogIn")
end
end
describe "My page" do
it "should have the h1 'My Page/'" do
visit '/static_pages/mypage'
page.should have_selector('h1', :text => 'My Page/')
end
it "should have the title 'MyPage'" do
visit '/static_pages/signup'
page.should have_selector('title',
:text => "Ruby on Rails Tutorial Sample App | MyPage")
end
end
end