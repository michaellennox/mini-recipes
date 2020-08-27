# frozen_string_literal: true

module APISchemas
  MODEL_SCHEMA = {
    type: :object,
    properties: {
      id: { type: :string, format: :uuid },
      manufacturer_id: { type: :string, format: :uuid },
      name: { type: :string }
    }
  }.freeze
end
