class CreateUserbases < ActiveRecord::Migration
  def change
    create_table :userbases do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
