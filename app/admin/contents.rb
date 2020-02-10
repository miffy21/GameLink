ActiveAdmin.register Content do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :genre_id, :name, :main_content, :sub_content, :image_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre_id, :name, :main_content, :sub_content, :image_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end


  permit_params :genre_id, :name, :main_content, :sub_content,:image,:image2,:image3,:image4,:image5

  index do
    selectable_column
    id_column
    column :name
    column :created_at
    column :updated_at
    actions
end
end
