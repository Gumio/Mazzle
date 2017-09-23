class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :profile_image_file_name
      t.string :name
      t.date :birthday
      t.integer :gender
      t.string :college
      t.integer :prefecture
      t.string :mail_address
      t.integer :kind
      t.string :wants
      t.string :wants_text
      t.string :work_image1_filename
      t.string :work_image2_filename
      t.string :work_image3_filename
      t.string :work_text1_title
      t.string :work_text2_title
      t.string :work_text3_title
      t.string :work_text1_detail
      t.string :work_text2_detail
      t.string :work_text3_detail

      t.timestamps
    end
  end
end
