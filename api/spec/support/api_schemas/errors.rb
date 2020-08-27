# frozen_string_literal: true

module APISchemas
  NOT_FOUND_SCHEMA = {
    type: :object,
    properties: {
      status: { type: :integer },
      error: { type: :string }
    }
  }.freeze

  VALIDATION_ERROR_SCHEMA = {
    type: :object,
    properties: {
      message: { type: :string },
      errors: { type: :array, items: { type: :string } }
    }
  }.freeze
end
