class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :mrd
      t.string :phone
      t.string :address
      t.string :status
      t.string :air
      t.string :bed
      t.string :history
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
