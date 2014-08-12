json.array!(@guestbooks) do |guestbook|
  json.extract! guestbook, :id, :tenant_id, :title, :content, :status, :originator_email, :originator_name
  json.url guestbook_url(guestbook, format: :json)
end
