class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.string :author_name
      t.string :author_email

      t.timestamps
    end
  end
end
