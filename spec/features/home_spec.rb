require 'rails_helper'

feature 'Visiting the homepage' do
    scenario 'The visitors sees welcome text' do
        visit root_path
        expect(page).to have_text('Welcome to RubyThursday')
    end

    scenario "the visitor sees Kirk Quote", :js => true do
      visit root_path
      expect(page).to_not have_errors
      click_button "Kirk Quote"
      within(".modal-text") do
        expect(page).to have_text("Beam me up, Scotty!")
      end
      click_link "Close"
      expect(page).not_to have_text("Beam me up, Scotty!")
    end
end
