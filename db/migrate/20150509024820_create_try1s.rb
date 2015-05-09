class CreateTry1s < ActiveRecord::Migration
  def change
    create_table :try1s do |t|
      t.string :name
      t.integer :cpnumber
      t.text :address

      t.timestamps
    end
  end
end
