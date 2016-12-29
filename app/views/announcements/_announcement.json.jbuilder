json.extract! announcement, :id, :name, :message, :display_until, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)