class AddPostIdColumnToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments,:post_id,:Integer
  end
end
