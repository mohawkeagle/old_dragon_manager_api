class CreateCharacterJournals < ActiveRecord::Migration
  def change
    create_table :character_journals, id: :bigint do |t|
      t.integer  :current_level,      limit: 4
      t.integer  :current_exp,        limit: 4
      t.boolean  :idactive,                     default: true, null: false
      t.integer  :character_id, limit: 8,                null: false
      t.integer  :alignment_id,       limit: 8,                null: false
      t.timestamps null: false
    end

    add_index :character_journals, [:alignment_id], using: :btree
    add_index :character_journals, [:character_id], using: :btree
  end
end
