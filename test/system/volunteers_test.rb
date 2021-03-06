require "application_system_test_case"

class VolunteersTest < ApplicationSystemTestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "visiting the index" do
    visit volunteers_url
    assert_selector "h1", text: "Volunteers"
  end

  test "creating a Volunteer" do
    visit volunteers_url
    click_on "Nový Dobrovolník"

    fill_in "Jméno", with: @volunteer.Jméno
    fill_in "Mail", with: @volunteer.Mail
    fill_in "Příjmení", with: @volunteer.Příjmení
    fill_in "Telefon", with: @volunteer.Telefon
    click_on "Vytvořit Dobrovolníka"

    assert_text "Volunteer was successfully created"
    click_on "Back"
  end

  test "updating a Volunteer" do
    visit volunteers_url
    click_on "Edit", match: :first

    fill_in "Jméno", with: @volunteer.Jméno
    fill_in "Mail", with: @volunteer.Mail
    fill_in "Příjmení", with: @volunteer.Příjmení
    fill_in "Telefon", with: @volunteer.Telefon
    click_on "Upravit Dobrovolníka"

    assert_text "Volunteer was successfully updated"
    click_on "Back"
  end

  test "destroying a Volunteer" do
    visit volunteers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Volunteer was successfully destroyed"
  end
end
