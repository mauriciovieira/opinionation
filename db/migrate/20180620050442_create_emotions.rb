class CreateEmotions < ActiveRecord::Migration[5.1]
  def change
    create_table :emotions do |t|
      t.references :emotionable, polymorphic: true
      t.references :user, foreign_key: true
      t.integer :emoji

      t.timestamps
    end
  end
end
