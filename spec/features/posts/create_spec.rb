context 'When creating a Post', :type => :feature do

  let!(:event){create(:event)}

  before :each do
    visit '/posts'
    click_on 'Add Post'
  end

  def post_defaults
    expect(page).to have_content 'New post'
    fill_in 'Title', with: post.title
    fill_in 'Description', with: post.description
  end

  it 'it saves successfully' do
    post_defaults
    click_on 'Save'
    expect(page).to have_content post.description
  end



end