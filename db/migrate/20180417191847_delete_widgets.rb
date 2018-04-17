class DeleteWidgets < ActiveRecord::Migration[5.0]
  def up
    drop_table :widgets
  end

  def down
    create_table "widgets", force: :cascade do |t|
      t.string  "first_name"
      t.string  "last_name"
      t.string  "dietary_restrictions"
      t.decimal "salary"
      t.integer "number_of_kids"
      t.string  "vulnerabilities"
      t.string  "illnesses"
      t.string  "medication"
      t.string  "voting_preferences"
    end
  end
end
