class SpiceSerializer < ActiveModel::Serializer
  attributes  :id, :name, :origin, :culinary_use, :weight, :price, :imageurl,
              :substitution
  belongs_to :user
  def editable
    scope == object.user
  end
end
