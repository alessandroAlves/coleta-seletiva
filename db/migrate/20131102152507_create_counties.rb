class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.string :name
      t.integer :code
      t.string :cnpj

      t.timestamps
    end
  end
end
