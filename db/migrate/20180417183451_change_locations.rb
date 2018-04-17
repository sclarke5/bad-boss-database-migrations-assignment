class ChangeLocations < ActiveRecord::Migration[5.0]
  def up
    remove_column(:locations, :address)
    remove_column(:locations, :manager)
    remove_column(:locations, :additional_comments)
    remove_column(:locations, :number_of_employees)
    add_column(:locations, :city, :string)
    add_column(:locations, :weather, :string)
  end

  def down
    add_column(:locations, :address, :string)
    add_column(:locations, :manager, :string)
    add_column(:locations, :additional_comments, :string)
    add_column(:locations, :number_of_employees, :integer)
    remove_column(:locations, :city)
    remove_column(:locations, :weather)
  end
end
