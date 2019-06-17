class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :surname, :born_date, :age, :email, :photo_attachment, :my_path, :my_blob

  has_many :events

  def my_path
    ActiveStorage::Blob.service.send(:path_for, object.photo.key)
    #active_storage_disk_service = ActiveStorage::Service::DiskService.new(root: Rails.root.to_s + '/storage/')
    #active_storage_disk_service.send(:path_for, object.photo.blob.key)
  end

  def my_blob
    object.photo_attachment.blob
  end
end
