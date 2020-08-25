# frozen_string_literal: true

class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models, id: :uuid do |t|
      t.belongs_to :manufacturer, type: :uuid, null: false, foreign_key: { on_delete: :restrict }

      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
