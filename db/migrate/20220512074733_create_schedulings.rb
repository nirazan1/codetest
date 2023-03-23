class CreateSchedulings < ActiveRecord::Migration[7.0]
  def change
    create_table :schedulings do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
