ActiveAdmin.register Post do
  permit_params :name, :description, :published_at, :image

scope :all
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  form do |f|
    inputs "Details" do
      input :name
      input :description
      f.file_field :image
    end
    actions
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :image_file_size
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :description
  filter :image_file_size
  filter :created_at
  filter :updated_at


# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
