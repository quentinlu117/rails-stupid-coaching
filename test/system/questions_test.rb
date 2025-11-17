require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end
  test "asking a question to the coach" do
    visit ask_url
    fill_in "question", with: "Hello coach, how are you today ?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
  test "saying that you go to work to the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
end
