class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :title
      t.text :details
      t.references :user
      t.references :issue

      t.timestamps
    end
    add_index :solutions, :user_id
    add_index :solutions, :issue_id
  end
end
