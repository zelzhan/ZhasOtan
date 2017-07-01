ActiveAdmin.register Subscription do
  permit_params :email

scope :all
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  form do |f|
    inputs "Details" do
      input :email
    end
    actions
  end

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :email
  filter :created_at
  filter :updated_at
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
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
