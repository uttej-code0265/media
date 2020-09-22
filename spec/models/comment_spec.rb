require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation tests' do
    it 'ensures body presence' do
      user=User.create(name:"uttej",email:"email@gmail.com",password:"password")
      post=Post.create(title:"some title",description:"some description",user_id:user.id)
      comment=Comment.new(user_id:user.id,post_id:post.id).save
      expect(comment).to eq(false)
    end

    it 'ensures user presence' do
      user=User.create(name:"uttej",email:"email@gmail.com",password:"password")
      post=Post.create(title:"some title",description:"some description",user_id:user.id)
      comment=Comment.new(post_id:post.id,body:"testing").save
      expect(comment).to eq(false)
    end

    it 'ensures post presence' do
      user=User.create(name:"uttej",email:"email@gmail.com",password:"password")
      post=Post.create(title:"some title",description:"some description",user_id:user.id)
      comment=Comment.new(user_id:user.id,body:"testing").save
      expect(comment).to eq(false)
    end
  end
end
