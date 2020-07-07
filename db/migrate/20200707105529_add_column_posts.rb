class AddColumnPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :fix_detail, :string
  end
end
