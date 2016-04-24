require 'rails_helper'

feature 'Visiting the homepage' do
    scenario 'The visitors sees welcome text' do
        visit root_path
        expect(page).to have_text('Welcome to RubyThursday')
    end
end
