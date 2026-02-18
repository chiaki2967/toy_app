require "application_system_test_case"

class MicrpostsTest < ApplicationSystemTestCase
  setup do
    @micrpost = micrposts(:one)
  end

  test "visiting the index" do
    visit micrposts_url
    assert_selector "h1", text: "Micrposts"
  end

  test "should create micrpost" do
    visit micrposts_url
    click_on "New micrpost"

    fill_in "Content", with: @micrpost.content
    fill_in "User", with: @micrpost.user_id
    click_on "Create Micrpost"

    assert_text "Micrpost was successfully created"
    click_on "Back"
  end

  test "should update Micrpost" do
    visit micrpost_url(@micrpost)
    click_on "Edit this micrpost", match: :first

    fill_in "Content", with: @micrpost.content
    fill_in "User", with: @micrpost.user_id
    click_on "Update Micrpost"

    assert_text "Micrpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Micrpost" do
    visit micrpost_url(@micrpost)
    click_on "Destroy this micrpost", match: :first

    assert_text "Micrpost was successfully destroyed"
  end
end
