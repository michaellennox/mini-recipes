# frozen_string_literal: true

module APISchemas
  RECIPE_SCHEMA = {
    type: :object,
    properties: {
      id: { type: :string, format: :uuid },
      modelId: { type: :string, format: :uuid },
      title: { type: :string },
      createdAt: { type: :string, format: :'date-time' },
      updatedAt: { type: :string, format: :'date-time' }
    }
  }.freeze

  NEW_RECIPE_SCHEMA = {
    type: :object,
    properties: {
      modelId: { type: :string, format: :uuid },
      title: { type: :string }
    },
    required: %i[modelId title]
  }.freeze
end
