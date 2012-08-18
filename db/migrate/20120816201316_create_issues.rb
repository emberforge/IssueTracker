class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.string :tag
      t.references :user

      t.timestamps
    end
    add_index :issues, :user_id
  end
end
