# This migration comes from spree_simple_sales (originally 20160208183600)
class AddSalePriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :sale_price, :decimal
  end
end
