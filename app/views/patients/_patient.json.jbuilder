json.extract! patient, :id, :name, :age, :mrd, :phone, :address, :status, :air, :bed, :history, :created_at, :updated_at
json.url patient_url(patient, format: :json)
