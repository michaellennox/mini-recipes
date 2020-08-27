# frozen_string_literal: true

json.message 'Validation failed'
json.errors do
  json.array! @error_messages
end
