ActiveAdmin.register Walkthrough do

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
    permit_params :genre_id, :name, :main_content, :sub_content,:image_id
end
