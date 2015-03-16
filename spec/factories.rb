FactoryGirl.define do
factory :user do
username "Michael Hartl"
email "michael@example.com"
password "foobar"
password confirmation "foobar"
end
end