require "rails_helper"

feature "Admin image parts create" do
  let(:admin) { create :admin }

  background { login_as admin, scope: :admin }

  scenario "successfully" do
    visit admin_path

    click_on "Agregar nueva imagen"

    within "#new_image_part" do
      select "header", from: "image_part_type"
      attach_file('Image', 'spec/support/fixtures/sample.jpg')
      click_on "Guardar"
    end

    expect(page).to have_content "Imagen creada satisfactoriamente"
  end

  scenario "unsuccessfully" do
    visit admin_path

    click_on "Agregar nueva imagen"

    within "#new_image_part" do
      select "header", from: "image_part_type"
      click_on "Guardar"
    end

    expect(page).to have_content "No se pudo guardar la imagen"
  end
end
