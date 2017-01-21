class AddMoreDetailTo < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :wage_upper_lound, :integer
    add_column :jobs, :wage_lower_lound, :integer
    add_column :jobs, :contact_email, :string
  end
end
