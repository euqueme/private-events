require 'rails_helper'

#RSpec.describe EventsController, type: :controller do

    RSpec.describe 'Hello world', type: :feature do
        scenario 'All events' do
          visit root_path
          expect(page).to have_content('All Events')
        end
    end

#end
