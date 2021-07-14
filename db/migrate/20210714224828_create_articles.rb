class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :image
      t.integer :author_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :articles, :user_id
  end
end
