class AddInstrumentToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :instrument, :string
  end
end
