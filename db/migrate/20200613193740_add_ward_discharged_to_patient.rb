class AddWardDischargedToPatient < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :ward, :string
    add_column :patients, :discharged, :boolean
  end
end
