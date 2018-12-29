class AddPlanToEmpresa < ActiveRecord::Migration[5.2]
  def change
    add_column :empresas, :plan, :integer
  end
end
