# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Home page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content 'Welcome'
  end

  # Scenario: Visit the home page logged in
  scenario 'visit the home page' do
    user = create_and_signin
    oven = user.ovens.first

    visit oven_path(oven)

    click_link_or_button 'Prepare Cookie'
    # fill_in 'Fillings', with: 'Chocolate Chip'
    click_button 'Mix and bake'

    expect(page).to have_content 'Your Cookie is Ready'

    click_button 'Retrieve Cookie'

    visit root_path
    expect(page).to have_content 'no fillings'
  end

end
