class CreateMicrposts < ActiveRecord::Migration[7.1]
  def change
    create_table :micrposts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
