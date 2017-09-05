require 'rails_helper'

feature 'User Story 1' do
  context "As a User//So that I have some context" do
    scenario "I’d like the homepage to have a greeting from the Chatbot" do
      visit '/'
      expect(page).to have_content "I'm Railsbot, your friendly conversation simulator."
    end
  end
end
