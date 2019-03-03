ActiveAdmin.register Project do
  permit_params :name

  active_admin_import validate: true,
    template_object: ActiveAdminImport::Model.new(
      force_encoding: :auto,
      csv_options: {
        col_sep: ','
      }
    ),
    back: {
      action: :index
    }

  # Menu item
  menu :label => "Projects", :parent => "Dimensions"

  filter :name

  index do
    selectable_column
    id_column
    column :name
    actions
  end


end
