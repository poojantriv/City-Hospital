class AddDoaToPatients < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :DOA, :date
  end
end
