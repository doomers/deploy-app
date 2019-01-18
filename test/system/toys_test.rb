require "application_system_test_case"

class ToysTest < ApplicationSystemTestCase
  setup do
    @toy = toys(:one)
  end

  test "visiting the index" do
    visit toys_url
    assert_selector "h1", text: "Toys"
  end

  test "creating a Toy" do
    visit toys_url
    click_on "New Toy"

    fill_in "Buying price", with: @toy.buying_price
    fill_in "Buying time", with: @toy.buying_time
    fill_in "Length", with: @toy.length
    fill_in "Name", with: @toy.name
    fill_in "Quantity", with: @toy.quantity
    fill_in "Selling price", with: @toy.selling_price
    fill_in "Selling time", with: @toy.selling_time
    fill_in "Sold", with: @toy.sold
    fill_in "Weight", with: @toy.weight
    fill_in "Width", with: @toy.width
    click_on "Create Toy"

    assert_text "Toy was successfully created"
    click_on "Back"
  end

  test "updating a Toy" do
    visit toys_url
    click_on "Edit", match: :first

    fill_in "Buying price", with: @toy.buying_price
    fill_in "Buying time", with: @toy.buying_time
    fill_in "Length", with: @toy.length
    fill_in "Name", with: @toy.name
    fill_in "Quantity", with: @toy.quantity
    fill_in "Selling price", with: @toy.selling_price
    fill_in "Selling time", with: @toy.selling_time
    fill_in "Sold", with: @toy.sold
    fill_in "Weight", with: @toy.weight
    fill_in "Width", with: @toy.width
    click_on "Update Toy"

    assert_text "Toy was successfully updated"
    click_on "Back"
  end

  test "destroying a Toy" do
    visit toys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Toy was successfully destroyed"
  end
end
