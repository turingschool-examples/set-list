=begin
  As a visitor
  When I visit the welcome page
  Then I see a welcome message
=end


RSpec.describe 'welcome page' do
  context 'as a visitor' do
    it 'should show a welcome message' do
      visit '/'

      binding.pry
      within '#greeting' do
        expect(page).to have_content('Welcome!')
      end
    end
  end
end