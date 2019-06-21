require 'rails_helper'
require 'support/session_helper'
require 'support/database_cleaner'


feature "Article creation" do
	before(:each) do
		# calls the method
		sign_up
	end

	scenario "allow user to vosit new article page" do
		visit new_article_path
		expect(page).to have_content 'New Article'
	end

end


