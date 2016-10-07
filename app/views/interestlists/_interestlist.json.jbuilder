json.extract! interestlist, :id, :user_id, :project_id, :interest, :interesttype, :created_at, :updated_at
json.url interestlist_url(interestlist, format: :json)