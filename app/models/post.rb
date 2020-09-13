class Post < ApplicationRecord
    validates :title,uniqueness:true,presence:true,length: {minimum:3,maximum: 20}
    validates :description,presence:true,length:{minimum:5,maximum:100}
end