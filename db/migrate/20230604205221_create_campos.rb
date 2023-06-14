class CreateCampos < ActiveRecord::Migration[7.0]
  def change
    create_table :campos do |t|
      t.string :userName
      t.text :description

      t.timestamps
    end
  end
end
