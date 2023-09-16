require "application_system_test_case"

class GrammarPointsTest < ApplicationSystemTestCase
  setup do
    @grammar_point = grammar_points(:one)
  end

  test "visiting the index" do
    visit grammar_points_url
    assert_selector "h1", text: "Grammar points"
  end

  test "should create grammar point" do
    visit grammar_points_url
    click_on "New grammar point"

    fill_in "About grammar", with: @grammar_point.about_grammar
    fill_in "About grammar example one", with: @grammar_point.about_grammar_example_one
    fill_in "About grammar example one translation", with: @grammar_point.about_grammar_example_one_translation
    fill_in "About grammar example three", with: @grammar_point.about_grammar_example_three
    fill_in "About grammar example three translation", with: @grammar_point.about_grammar_example_three_translation
    fill_in "About grammar example two", with: @grammar_point.about_grammar_example_two
    fill_in "About grammar example two translation", with: @grammar_point.about_grammar_example_two_translation
    fill_in "Bonus example one", with: @grammar_point.bonus_example_one
    fill_in "Bonus example one translation", with: @grammar_point.bonus_example_one_translation
    fill_in "Bonus example three", with: @grammar_point.bonus_example_three
    fill_in "Bonus example three translation", with: @grammar_point.bonus_example_three_translation
    fill_in "Bonus example two", with: @grammar_point.bonus_example_two
    fill_in "Bonus example two translation", with: @grammar_point.bonus_example_two_translation
    fill_in "Caution examples", with: @grammar_point.caution_examples
    fill_in "Caution text", with: @grammar_point.caution_text
    fill_in "Grammar point brief translation", with: @grammar_point.grammar_point_brief_translation
    fill_in "Grammar point japanese", with: @grammar_point.grammar_point_japanese
    fill_in "Highlight example", with: @grammar_point.highlight_example
    fill_in "Highlight example translation", with: @grammar_point.highlight_example_translation
    fill_in "Jlpt level", with: @grammar_point.jlpt_level
    fill_in "Resources titles", with: @grammar_point.resources_titles
    fill_in "Resources urls", with: @grammar_point.resources_urls
    fill_in "Structure text", with: @grammar_point.structure_text
    click_on "Create Grammar point"

    assert_text "Grammar point was successfully created"
    click_on "Back"
  end

  test "should update Grammar point" do
    visit grammar_point_url(@grammar_point)
    click_on "Edit this grammar point", match: :first

    fill_in "About grammar", with: @grammar_point.about_grammar
    fill_in "About grammar example one", with: @grammar_point.about_grammar_example_one
    fill_in "About grammar example one translation", with: @grammar_point.about_grammar_example_one_translation
    fill_in "About grammar example three", with: @grammar_point.about_grammar_example_three
    fill_in "About grammar example three translation", with: @grammar_point.about_grammar_example_three_translation
    fill_in "About grammar example two", with: @grammar_point.about_grammar_example_two
    fill_in "About grammar example two translation", with: @grammar_point.about_grammar_example_two_translation
    fill_in "Bonus example one", with: @grammar_point.bonus_example_one
    fill_in "Bonus example one translation", with: @grammar_point.bonus_example_one_translation
    fill_in "Bonus example three", with: @grammar_point.bonus_example_three
    fill_in "Bonus example three translation", with: @grammar_point.bonus_example_three_translation
    fill_in "Bonus example two", with: @grammar_point.bonus_example_two
    fill_in "Bonus example two translation", with: @grammar_point.bonus_example_two_translation
    fill_in "Caution examples", with: @grammar_point.caution_examples
    fill_in "Caution text", with: @grammar_point.caution_text
    fill_in "Grammar point brief translation", with: @grammar_point.grammar_point_brief_translation
    fill_in "Grammar point japanese", with: @grammar_point.grammar_point_japanese
    fill_in "Highlight example", with: @grammar_point.highlight_example
    fill_in "Highlight example translation", with: @grammar_point.highlight_example_translation
    fill_in "Jlpt level", with: @grammar_point.jlpt_level
    fill_in "Resources titles", with: @grammar_point.resources_titles
    fill_in "Resources urls", with: @grammar_point.resources_urls
    fill_in "Structure text", with: @grammar_point.structure_text
    click_on "Update Grammar point"

    assert_text "Grammar point was successfully updated"
    click_on "Back"
  end

  test "should destroy Grammar point" do
    visit grammar_point_url(@grammar_point)
    click_on "Destroy this grammar point", match: :first

    assert_text "Grammar point was successfully destroyed"
  end
end
