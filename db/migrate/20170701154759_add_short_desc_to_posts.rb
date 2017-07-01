class AddShortDescToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :short_desc, :string
  end
end
