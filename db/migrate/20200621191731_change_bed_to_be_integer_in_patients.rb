class ChangeBedToBeIntegerInPatients < ActiveRecord::Migration[5.2]
  def change
  	change_column :patients, :bed, :integer, using: 'bed::integer'
  end
end
