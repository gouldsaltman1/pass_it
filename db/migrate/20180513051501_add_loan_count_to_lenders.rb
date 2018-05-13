class AddLoanCountToLenders < ActiveRecord::Migration[5.0]
  def change
    add_column :lenders, :loans_count, :integer
  end
end
