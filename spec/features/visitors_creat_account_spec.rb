require 'rails_helper'
require 'support/session_helper'

feature "Account creation" do
	scenario "allow guest to create contact" do
		
		# I call the method
		sign_up

		expect(page).to have_content I18n.t('devise.registrations.signed_up')
	end

end


