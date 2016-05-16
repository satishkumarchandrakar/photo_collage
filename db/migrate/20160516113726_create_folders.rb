class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.belongs_to :user;
      t.string :name;
     t.timestamps null: false
    end
  end
end
