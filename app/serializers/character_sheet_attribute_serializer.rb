class CharacterSheetAttributeSerializer < ActiveModel::Serializer
  attributes :id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
end
