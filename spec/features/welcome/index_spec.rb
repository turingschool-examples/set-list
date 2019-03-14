
=begin

As a visitor
When I visit the home page
then I see a "welcome" message

=end


RSpec.describe 'welcome index workflow' do
  context 'as a visitor' do
    it 'should show a welcome message' do
      visit '/'

      within '#greeting' do
        expect(page).to have_content('Welcome!')
      end
    end
  end
end