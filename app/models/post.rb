class Post < ApplicationRecord
    validates :title,uniqueness:true,presence:true,length: {minimum:3,maximum: 50}
    validates :description,presence:true,length:{minimum:5,maximum:100}
    has_many :comments,dependent: :destroy
end