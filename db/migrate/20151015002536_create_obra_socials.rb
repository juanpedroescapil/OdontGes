class CreateObraSocials < ActiveRecord::Migration
  def change
    create_table :obra_socials do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
