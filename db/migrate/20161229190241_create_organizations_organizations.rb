class CreateOrganizationsOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations_organizations do |t|
      t.belongs_to :organization, index: true
      t.belongs_to :organization, index: true
    end
  end
end
