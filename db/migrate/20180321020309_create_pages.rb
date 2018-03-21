class CreatePages < ActiveRecord::Migration[5.1]
  def up
    create_table :pages do |t|
      t.references :subjects, index: true, foreign_key: true
      t.string "name", :limit => 50
      t.integer "permalink"
      t.integer "position"
      t.boolean "visible"
      t.timestamps
    end
    add_index("pages", "permalink")
  end

  def down
    drop_table :pages
  end
end
