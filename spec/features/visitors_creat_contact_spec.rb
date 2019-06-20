require 'rails_helper'

#simple example of feature scenario
feature "..." do
	scenario "..." do
	end
end
#end simple example of feature scenario



feature "Contact creattion" do
	scenario "allow access to contacts page" do
		
		visit '/contacts'
		
		expect(page).to have_content I18n.t('contacts.contact_us')
	end


	scenario "allow a guest to create contact" do
    visit '/contacts'

    fill_in :contact_email, with: 'user@example.com'
    fill_in :contact_message, with: 'something'
		
		click_button 'Send message'


		expect(page).to have_content 'Thank you page'
	end


end




