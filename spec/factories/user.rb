require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.userid "123456"
    f.email "teste@teste.com"
  end
end
