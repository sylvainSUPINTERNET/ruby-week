class AddColumnToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :hashtag, :string
    add_column :posts, :string, :string
  end
end
