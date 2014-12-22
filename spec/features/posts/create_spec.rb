require 'rails_helper'

context 'When creating a Post', :type => :feature do

  let!(:post){create(:post)}

  before :each do
    visit '/posts'
    click_on 'New Post'
  end

  def post_defaults
    expect(page).to have_content 'New post'
    fill_in 'Title', with: post.title
    fill_in 'Body', with: post.body
  end

  it 'it saves successfully' do
    post_defaults
    click_on 'Save'
    expect(page).to have_content post.body
  end

end