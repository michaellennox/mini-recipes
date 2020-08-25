# frozen_string_literal: true

games_workshop =
  Manufacturer
    .create_with({})
    .find_or_create_by!(name: 'Games Workshop')

STORMCAST_ETERNAL_MODELS = [
  'Aetherwings',
  'Aventis Firestrike: Magister of Hammerhal',
  'Castigators',
  'Celestant-Prime',
  'Concussors',
  'Decimators',
  'Desolators',
  'Liberators',
  'Judicators'
].freeze

STORMCAST_ETERNAL_MODELS.each do |model_name|
  Model
    .create_with({})
    .find_or_create_by!(manufacturer: games_workshop, name: model_name)
end
