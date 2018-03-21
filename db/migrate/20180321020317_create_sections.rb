class CreateSections < ActiveRecord::Migration[5.1]
  def up
    create_table :sections do |t|
      t.references :pages, index: true, foreign_key: true
      t.string "name", :limit => 50
      t.integer "position"
      t.boolean "visible"
      t.string "content_type"
      t.text "content"
      t.timestamps
    end
  end

  def down
    drop_table :sections
  end
end
