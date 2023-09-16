require "test_helper"

class GrammarPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grammar_point = grammar_points(:one)
  end

  test "should get index" do
    get grammar_points_url
    assert_response :success
  end

  test "should get new" do
    get new_grammar_point_url
    assert_response :success
  end

  test "should create grammar_point" do
    assert_difference("GrammarPoint.count") do
      post grammar_points_url, params: { grammar_point: { about_grammar: @grammar_point.about_grammar, about_grammar_example_one: @grammar_point.about_grammar_example_one, about_grammar_example_one_translation: @grammar_point.about_grammar_example_one_translation, about_grammar_example_three: @grammar_point.about_grammar_example_three, about_grammar_example_three_translation: @grammar_point.about_grammar_example_three_translation, about_grammar_example_two: @grammar_point.about_grammar_example_two, about_grammar_example_two_translation: @grammar_point.about_grammar_example_two_translation, bonus_example_one: @grammar_point.bonus_example_one, bonus_example_one_translation: @grammar_point.bonus_example_one_translation, bonus_example_three: @grammar_point.bonus_example_three, bonus_example_three_translation: @grammar_point.bonus_example_three_translation, bonus_example_two: @grammar_point.bonus_example_two, bonus_example_two_translation: @grammar_point.bonus_example_two_translation, caution_examples: @grammar_point.caution_examples, caution_text: @grammar_point.caution_text, grammar_point_brief_translation: @grammar_point.grammar_point_brief_translation, grammar_point_japanese: @grammar_point.grammar_point_japanese, highlight_example: @grammar_point.highlight_example, highlight_example_translation: @grammar_point.highlight_example_translation, jlpt_level: @grammar_point.jlpt_level, resources_titles: @grammar_point.resources_titles, resources_urls: @grammar_point.resources_urls, structure_text: @grammar_point.structure_text } }
    end

    assert_redirected_to grammar_point_url(GrammarPoint.last)
  end

  test "should show grammar_point" do
    get grammar_point_url(@grammar_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_grammar_point_url(@grammar_point)
    assert_response :success
  end

  test "should update grammar_point" do
    patch grammar_point_url(@grammar_point), params: { grammar_point: { about_grammar: @grammar_point.about_grammar, about_grammar_example_one: @grammar_point.about_grammar_example_one, about_grammar_example_one_translation: @grammar_point.about_grammar_example_one_translation, about_grammar_example_three: @grammar_point.about_grammar_example_three, about_grammar_example_three_translation: @grammar_point.about_grammar_example_three_translation, about_grammar_example_two: @grammar_point.about_grammar_example_two, about_grammar_example_two_translation: @grammar_point.about_grammar_example_two_translation, bonus_example_one: @grammar_point.bonus_example_one, bonus_example_one_translation: @grammar_point.bonus_example_one_translation, bonus_example_three: @grammar_point.bonus_example_three, bonus_example_three_translation: @grammar_point.bonus_example_three_translation, bonus_example_two: @grammar_point.bonus_example_two, bonus_example_two_translation: @grammar_point.bonus_example_two_translation, caution_examples: @grammar_point.caution_examples, caution_text: @grammar_point.caution_text, grammar_point_brief_translation: @grammar_point.grammar_point_brief_translation, grammar_point_japanese: @grammar_point.grammar_point_japanese, highlight_example: @grammar_point.highlight_example, highlight_example_translation: @grammar_point.highlight_example_translation, jlpt_level: @grammar_point.jlpt_level, resources_titles: @grammar_point.resources_titles, resources_urls: @grammar_point.resources_urls, structure_text: @grammar_point.structure_text } }
    assert_redirected_to grammar_point_url(@grammar_point)
  end

  test "should destroy grammar_point" do
    assert_difference("GrammarPoint.count", -1) do
      delete grammar_point_url(@grammar_point)
    end

    assert_redirected_to grammar_points_url
  end
end
