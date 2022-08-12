class CreateJurors < ActiveRecord::Migration[7.0]
  def change
    create_table :jurors do |t|
      t.integer :panel_number
      t.string :name
      t.integer :age
      t.string :sex
      t.string :residence
      t.string :housing
      t.string :education
      t.boolean :law_experience
      t.string :occupation
      t.boolean :military_service
      t.boolean :jury_relation
      t.string :prior_jury
      t.string :notes
      t.boolean :jury_pool
      t.boolean :jury_box
      t.boolean :jury_alternate

      t.timestamps
    end
  end
end
