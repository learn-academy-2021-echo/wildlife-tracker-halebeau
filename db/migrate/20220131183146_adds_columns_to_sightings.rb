class AddsColumnsToSightings < ActiveRecord::Migration[6.1]
  def change
    add_column :sightings, :animal_id, :integer
    add_column :sightings, :latitude, :float
    add_column :sightings, :longitude, :float
    add_column :sightings, :date, :datetime
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
