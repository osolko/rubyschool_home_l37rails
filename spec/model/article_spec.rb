require 'rails_helper'

describe Article, type: :model do
	
	describe "validationd" do
		it { should validate_presence_of :title }
  	it { should validate_presence_of :text }
	end

# could use describe for example "association"

  it { should have_many :comments }


end