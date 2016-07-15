require 'test_helper'

class SpeechesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speech = speeches(:one)
  end

  test "should get index" do
    get speeches_url
    assert_response :success
  end

  test "should get new" do
    get new_speech_url
    assert_response :success
  end

  test "should create speech" do
    assert_difference('Speeche.count') do
      post speeches_url, params: { speech: { congressman_id: @speech.congressman_id, count: @speech.count, key_word: @speech.key_word } }
    end

    assert_redirected_to speech_url(Speeche.last)
  end

  test "should show speech" do
    get speech_url(@speech)
    assert_response :success
  end

  test "should get edit" do
    get edit_speech_url(@speech)
    assert_response :success
  end

  test "should update speech" do
    patch speech_url(@speech), params: { speech: { congressman_id: @speech.congressman_id, count: @speech.count, key_word: @speech.key_word } }
    assert_redirected_to speech_url(@speech)
  end

  test "should destroy speech" do
    assert_difference('Speeche.count', -1) do
      delete speech_url(@speech)
    end

    assert_redirected_to speeches_url
  end
end
