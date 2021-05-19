require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Jméno", with: @order.Jméno
    fill_in "Město", with: @order.Město
    fill_in "PsČ", with: @order.PSČ
    fill_in "Poznámka", with: @order.Poznámka
    fill_in "Příjmení", with: @order.Příjmení
    fill_in "Ulice", with: @order.Ulice
    fill_in "Čp", with: @order.ČP
    fill_in "Žádost", with: @order.Žádost
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Jméno", with: @order.Jméno
    fill_in "Město", with: @order.Město
    fill_in "PsČ", with: @order.PSČ
    fill_in "Poznámka", with: @order.Poznámka
    fill_in "Příjmení", with: @order.Příjmení
    fill_in "Ulice", with: @order.Ulice
    fill_in "Čp", with: @order.ČP
    fill_in "Žádost", with: @order.Žádost
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
