require 'rails_helper'

feature "Slider" do
  scenario "creating a new image" do
    visit root_path

    expect(page).to have_content("Iniciar")
    click_on "Guardar"
    expect(current_path).to eq(image_path(Image.last))
  end
end
