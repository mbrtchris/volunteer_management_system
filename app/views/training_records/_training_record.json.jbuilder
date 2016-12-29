json.extract! training_record, :id, :profile_id, :type, :training_id, :has_passed, :expires_at, :created_at, :updated_at
json.url training_record_url(training_record, format: :json)