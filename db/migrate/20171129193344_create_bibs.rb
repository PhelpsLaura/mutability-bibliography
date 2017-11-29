class CreateBibs < ActiveRecord::Migration[5.1]
  def change
    create_table :bibs do |t|
      t.text :options

      t.timestamps
    end
  end
end
