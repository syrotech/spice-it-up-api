class SpiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :origin, :culinary_use, :weight, :price
  belongs_to :user
  def editable
    scope == object.user
  end
end
