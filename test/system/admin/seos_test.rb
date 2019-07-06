require "application_system_test_case"

class Admin::SeosTest < ApplicationSystemTestCase
  setup do
    @admin_seo = admin_seos(:one)
  end

  test "visiting the index" do
    visit admin_seos_url
    assert_selector "h1", text: "Admin/Seos"
  end

  test "creating a Seo" do
    visit admin_seos_url
    click_on "New Admin/Seo"

    click_on "Create Seo"

    assert_text "Seo was successfully created"
    click_on "Back"
  end

  test "updating a Seo" do
    visit admin_seos_url
    click_on "Edit", match: :first

    click_on "Update Seo"

    assert_text "Seo was successfully updated"
    click_on "Back"
  end

  test "destroying a Seo" do
    visit admin_seos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seo was successfully destroyed"
  end
end
