ActiveAdmin.register Food do
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
  permit_params :name, :description, :price

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    actions
  end

  filter :name
  filter :price

  form do |f|
    f.inputs do
    f.input :name
    f.input :description
    f.input :price
  end
  f.actions
  end
end
