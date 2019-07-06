require "application_system_test_case"

class Admin::CasesTest < ApplicationSystemTestCase
  setup do
    @admin_case = admin_cases(:one)
  end

  test "visiting the index" do
    visit admin_cases_url
    assert_selector "h1", text: "Admin/Cases"
  end

  test "creating a Case" do
    visit admin_cases_url
    click_on "New Admin/Case"

    click_on "Create Case"

    assert_text "Case was successfully created"
    click_on "Back"
  end

  test "updating a Case" do
    visit admin_cases_url
    click_on "Edit", match: :first

    click_on "Update Case"

    assert_text "Case was successfully updated"
    click_on "Back"
  end

  test "destroying a Case" do
    visit admin_cases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Case was successfully destroyed"
  end
end
