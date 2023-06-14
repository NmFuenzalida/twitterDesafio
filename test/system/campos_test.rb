require "application_system_test_case"

class CamposTest < ApplicationSystemTestCase
  setup do
    @campo = campos(:one)
  end

  test "visiting the index" do
    visit campos_url
    assert_selector "h1", text: "Campos"
  end

  test "should create campo" do
    visit campos_url
    click_on "New campo"

    fill_in "Description", with: @campo.description
    fill_in "Username", with: @campo.userName
    click_on "Create Campo"

    assert_text "Campo was successfully created"
    click_on "Back"
  end

  test "should update Campo" do
    visit campo_url(@campo)
    click_on "Edit this campo", match: :first

    fill_in "Description", with: @campo.description
    fill_in "Username", with: @campo.userName
    click_on "Update Campo"

    assert_text "Campo was successfully updated"
    click_on "Back"
  end

  test "should destroy Campo" do
    visit campo_url(@campo)
    click_on "Destroy this campo", match: :first

    assert_text "Campo was successfully destroyed"
  end
end
