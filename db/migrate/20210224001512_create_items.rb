class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
