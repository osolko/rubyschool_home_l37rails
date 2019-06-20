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
end