class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :picture
end
