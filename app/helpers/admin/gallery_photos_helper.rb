module Admin::GalleryPhotosHelper

  def admin_delete_button_for(resource, title = nil, parent_resource = nil)
    if parent_resource.present?
      path = [:admin, parent_resource, resource]
    else
      path = [:admin, resource]
    end

    title = title || t('admin.actions.delete').titleize
    link_to title, path, method: :delete,
            class: 'btn btn-xs btn-danger pull-right', data: { confirm: 'Are you sure?' }
  end
end

