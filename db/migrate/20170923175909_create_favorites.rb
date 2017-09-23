class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|

      t.references :user
      t.integer :target_user_id

      t.timestamps
    end
  end
end
