class CreateRepositorySnapshots < ActiveRecord::Migration
  def change
    create_table :repository_snapshots do |t|
      t.string :name
      t.string :html_url
      t.integer :stargazers_count
      t.string :language
      t.date :create_date

      t.timestamps null: false
    end
  end
end
