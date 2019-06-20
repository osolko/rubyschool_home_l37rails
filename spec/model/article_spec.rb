require 'rails_helper'

describe Article, type: :model do
	
	describe "validationd" do
		it { should validate_presence_of :title }
  	it { should validate_presence_of :text }
	end



# could use describe-end for example "association" to make readeble
  it { should have_many :comments }


  describe "#subject" do
  	it "returns the article title" do
  		article = create(:article, title: 'Lorem Ipsum')

  		expect(article.subject).to eq 'Lorem Ipsum'
  	end
	end

  describe "#subject" do
  	it "returns the article title" do
  		article = create(:article, title: 'Lorem Ipsum')

  		expect(article.subject.length).to be(11)

  	end
	end


	
	describe "#last_comment" do
		it "returns the last comment" do
			#create article with comments
				article = create(:article_with_comments)

			# check
			expect(article.last_comment.body).to eq "comment body 3"
		end
	end


end