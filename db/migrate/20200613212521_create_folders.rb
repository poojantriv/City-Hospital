class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      t.string :bp
      t.string :pulse
      t.string :spo2
      t.string :temperature
      t.string :complaints
      t.string :advise
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
