class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :user, index: true, foreign_key: true
      t.text :page

      t.timestamps null: false
    end
  end
end
