class CreateActors < ActiveRecord::Migration[8.0]
  def change
    create_table :actors do |t|
      t.string :name, default: "John Doe"
      t.date   :dob,  default: "1990-09-01"
      t.timestamps
    end
  end
end
