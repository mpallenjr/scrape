class CreateUsaTodays < ActiveRecord::Migration[7.2]
  def change
    create_table :usa_todays do |t|
      t.timestamps
    end
  end
end
