require "application_system_test_case"

class MicropostsTest < ApplicationSystemTestCase
  setup do
    @micropost = microposts(:one)
  end

  test "visiting the index" do
    visit micropost_url
    assert_selector "h1", text: "microposts"
  end

  test "creating a micropost" do
    visit micropost_url
    click_on "New micropost"

    fill_in "Content", with: @micropost.content
    fill_in "User", with: @micropost.user_id
    click_on "Create micropost"

    assert_text "micropost was successfully created"
    click_on "Back"
  end

  test "updating a micropost" do
    visit micropost_url
    click_on "Edit", match: :first

    fill_in "Content", with: @micropost.content
    fill_in "User", with: @micropost.user_id
    click_on "Update micropost"

    assert_text "micropost was successfully updated"
    click_on "Back"
  end

  test "destroying a micropost" do
    visit micropost_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "micropost was successfully destroyed"
  end
end
