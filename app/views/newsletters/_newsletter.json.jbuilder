json.extract! newsletter, :id, :subject, :delivered_at, :created_at, :updated_at
json.url newsletter_url(newsletter, format: :json)