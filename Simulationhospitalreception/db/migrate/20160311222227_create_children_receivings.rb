class CreateChildrenReceivings < ActiveRecord::Migration
  def change
    create_table :children_receivings do |t|

      t.timestamps null: false
    end
  end
end
