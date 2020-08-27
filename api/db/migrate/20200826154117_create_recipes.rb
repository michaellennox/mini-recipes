# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes, id: :uuid do |t|
      t.belongs_to :model, type: :uuid, null: false, foreign_key: { on_delete: :restrict }

      t.string :title

      t.timestamps
    end
  end
end
