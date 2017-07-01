class AddShortDescToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :short_desc, :string
  end
end
