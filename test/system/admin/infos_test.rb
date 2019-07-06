require "application_system_test_case"

class Admin::InfosTest < ApplicationSystemTestCase
  setup do
    @admin_info = admin_infos(:one)
  end

  test "visiting the index" do
    visit admin_infos_url
    assert_selector "h1", text: "Admin/Infos"
  end

  test "creating a Info" do
    visit admin_infos_url
    click_on "New Admin/Info"

    click_on "Create Info"

    assert_text "Info was successfully created"
    click_on "Back"
  end

  test "updating a Info" do
    visit admin_infos_url
    click_on "Edit", match: :first

    click_on "Update Info"

    assert_text "Info was successfully updated"
    click_on "Back"
  end

  test "destroying a Info" do
    visit admin_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Info was successfully destroyed"
  end
end
