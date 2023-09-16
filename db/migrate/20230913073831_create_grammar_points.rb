class CreateGrammarPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :grammar_points do |t|
      t.string :grammar_point_japanese
      t.string :grammar_point_brief_translation
      t.string :jlpt_level
      t.string :highlight_example
      t.string :highlight_example_translation
      t.text :caution_text
      t.text :caution_examples
      t.text :structure_text
      t.text :about_grammar
      t.string :about_grammar_example_one
      t.string :about_grammar_example_one_translation
      t.string :about_grammar_example_two
      t.string :about_grammar_example_two_translation
      t.string :about_grammar_example_three
      t.string :about_grammar_example_three_translation
      t.string :bonus_example_one
      t.string :bonus_example_one_translation
      t.string :bonus_example_two
      t.string :bonus_example_two_translation
      t.string :bonus_example_three
      t.string :bonus_example_three_translation
      t.string :resources_titles
      t.string :resources_urls

      t.timestamps
    end
  end
end
