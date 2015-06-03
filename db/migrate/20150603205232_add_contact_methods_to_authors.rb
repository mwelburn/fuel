class AddContactMethodsToAuthors < ActiveRecord::Migration
  def change
    add_column :fuel_authors, :email, :string
    add_column :fuel_authors, :twitter, :string
    add_column :fuel_authors, :github, :string
    add_column :fuel_authors, :dribbble, :string
  end
end
