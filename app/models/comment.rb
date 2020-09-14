class Comment < ApplicationRecord
    validates :name,presence:true
    validates :reply,presence:true
    belongs_to :post
end