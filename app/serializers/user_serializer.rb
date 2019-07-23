class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :surname, :age, :email, :born_date #, :photo_attachment, :my_path, :my_blob, :born_date

  has_many :events

  #def my_path
  #  begin

   # ActiveStorage::Blob.service.send(:path_for, object.photo.key)
    #active_storage_disk_service = ActiveStorage::Service::DiskService.new(root: Rails.root.to_s + '/storage/')
    #active_storage_disk_service.send(:path_for, object.photo.blob.key)

      # potentially exception raising code
      #rescue Exception1 => e
    #    object.photo_attachment.blob
    #end
  #end

  #def my_blob
   # object.photo_attachment.blob
  #end
end
