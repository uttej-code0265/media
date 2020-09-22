require 'rails_helper'

RSpec.describe Post, type: :model do
 context 'validations tests' do
  it 'ensures title presence' do
    user=User.create(name:"uttej",email:"email@gmail.com",password:"password")
    post=Post.new(description:"some description",user_id:user.id).save
    expect(post).to eq(false)
  end 

  it 'ensures title length' do
    user=User.create(name:"uttej",email:"email@gmail.com",password:"password")
    post=Post.new(title:"ab",description:"some description",user_id:user.id).save
    expect(post).to eq(false)
  end

  it 'ensures description presence' do
    user=User.create(name:"uttej",email:"email@gmail.com",password:"password")
    post=Post.new(title:"some title",user_id:user.id).save
    expect(post).to eq(false)
  end 

  it 'ensures description length' do
    user=User.create(name:"uttej",email:"email@gmail.com",password:"password")
    post=Post.new(title:"some title",description:"some",user_id:user.id).save
    expect(post).to eq(false)
  end 


end
end
