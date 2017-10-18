class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :author
      t.belongs_to :topic, foreign_key: true

      t.timestamps
    end
  end
end
