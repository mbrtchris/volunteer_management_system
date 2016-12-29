json.extract! class_session, :id, :subject, :notes, :number_of_students, :start_time, :end_time, :room, :created_at, :updated_at
json.url class_session_url(class_session, format: :json)