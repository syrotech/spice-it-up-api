class SpiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :culinary_use, :weight, :price
end
