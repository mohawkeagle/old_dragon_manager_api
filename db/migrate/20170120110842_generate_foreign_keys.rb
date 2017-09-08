class GenerateForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :armors, :alignments
    add_foreign_key :armors, :armor_types
    add_foreign_key :armors, :origins
    add_foreign_key :armors, :users
    add_foreign_key :campaign_journals, :campaigns
    add_foreign_key :campaign_notes, :campaigns
    add_foreign_key :campaign_members, :campaigns
    add_foreign_key :campaign_members, :characters
    add_foreign_key :campaigns, :users
    add_foreign_key :character_attributes, :characters
    add_foreign_key :character_class_armor_types, :armor_types
    add_foreign_key :character_class_armor_types, :character_classes
    add_foreign_key :character_class_evolutions, :character_classes
    add_foreign_key :character_class_item_types, :character_classes
    add_foreign_key :character_class_item_types, :item_types
    add_foreign_key :character_class_magic_circles, :character_classes
    add_foreign_key :character_class_requirements, :character_classes
    add_foreign_key :character_class_specialization_stages, :character_class_specializations
    add_foreign_key :character_class_specializations, :character_classes
    add_foreign_key :character_class_spell_types, :character_classes
    add_foreign_key :character_class_spell_types, :spell_types
    add_foreign_key :character_class_types, :spell_types
    add_foreign_key :character_class_weapon_types, :character_classes
    add_foreign_key :character_class_weapon_types, :weapon_types
    add_foreign_key :character_classes, :character_class_types
    add_foreign_key :character_classes, :dices
    add_foreign_key :character_classes, :users
    add_foreign_key :character_expertises, :characters
    add_foreign_key :character_expertises, :expertises
    add_foreign_key :character_journals, :alignments
    add_foreign_key :character_journals, :characters
    add_foreign_key :character_race_armors, :armor_types
    add_foreign_key :character_race_armors, :character_races
    add_foreign_key :character_race_languages, :character_races
    add_foreign_key :character_race_languages, :language_types
    add_foreign_key :character_race_traits, :character_races
    add_foreign_key :character_race_traits, :traits
    add_foreign_key :character_race_skills, :character_races
    add_foreign_key :character_race_skills, :skills
    add_foreign_key :character_race_thief_talents, :character_races
    add_foreign_key :character_race_weapons, :character_races
    add_foreign_key :character_race_weapons, :weapon_types
    add_foreign_key :character_races, :alignments
    add_foreign_key :character_races, :dices
    add_foreign_key :character_races, :users
    add_foreign_key :characters, :character_classes
    add_foreign_key :characters, :character_races
    add_foreign_key :characters, :users
    add_foreign_key :effects, :effect_types
    add_foreign_key :effects, :users
    add_foreign_key :expertises, :users
    add_foreign_key :items, :item_types
    add_foreign_key :items, :users
    add_foreign_key :traits, :trait_types
    add_foreign_key :traits, :users
    add_foreign_key :skills, :effects
    add_foreign_key :skills, :skill_types
    add_foreign_key :skills, :users
    add_foreign_key :spell_circles, :spell_types
    add_foreign_key :spells, :effects
    add_foreign_key :spells, :element_types
    add_foreign_key :spells, :spell_circles
    add_foreign_key :spells, :users
    add_foreign_key :thief_talents, :character_classes
    add_foreign_key :undead_banes, :character_classes
    add_foreign_key :users, :roles
    add_foreign_key :weapons, :alignments
    add_foreign_key :weapons, :dices
    add_foreign_key :weapons, :material_types
    add_foreign_key :weapons, :origins
    add_foreign_key :weapons, :users
    add_foreign_key :weapons, :weapon_types
    add_foreign_key :weapons, :weapon_sizes
  end
end
