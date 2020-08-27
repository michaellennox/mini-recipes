# frozen_string_literal: true

module APISchemas
  RECIPE_SCHEMA = {
    type: :object,
    properties: {
      id: { type: :string, format: :uuid },
      model_id: { type: :string, format: :uuid },
      title: { type: :string },
      created_at: { type: :string, format: :'date-time' },
      updated_at: { type: :string, format: :'date-time' }
    }
  }.freeze

  NEW_RECIPE_SCHEMA = {
    type: :object,
    properties: {
      model_id: { type: :string, format: :uuid },
      title: { type: :string }
    },
    required: %i[model_id title]
  }.freeze
end
