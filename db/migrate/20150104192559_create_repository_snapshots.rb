class CreateRepositorySnapshots < ActiveRecord::Migration
  def change
    create_table :repository_snapshots do |t|
      t.string :name, null: false
      t.string :html_url, null: false
      t.integer :stargazers_count, null: false
      t.string :language, null: false
      t.date :create_date, null: false
    end
    add_index :repository_snapshots, [:create_date, :language]
    add_index :repository_snapshots, :language
  end
end
