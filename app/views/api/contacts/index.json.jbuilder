json.array! @contacts.each do |contact|
  json.id contact.id
  json.first_name contact.first_name
  json.last_name contact.last_name
  json.full_name contact.full_name
  json.email contact.email
  json.phone_number contact.japan_phone
  json.date_created contact.friendly_created_at
end