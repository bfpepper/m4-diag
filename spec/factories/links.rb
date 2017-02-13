FactoryGirl.define do
  factory :link do
    url "http://www.google.com"
    title "MyString"
    read false
    user
  end
end
