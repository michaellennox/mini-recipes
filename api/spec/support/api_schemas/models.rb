# frozen_string_literal: true

module APISchemas
  MODEL_SCHEMA = {
    type: :object,
    properties: {
      id: { type: :string, format: :uuid },
      manufacturerId: { type: :string, format: :uuid },
      name: { type: :string }
    }
  }.freeze
end
