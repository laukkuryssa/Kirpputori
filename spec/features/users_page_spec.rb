require 'rails_helper'

describe "who has signed up" do
    it "can signup with right credentials" do
      visit root_path
      fill_in('username', with:'Pekka')
      fill_in('password', with:'Foobar1')
      fill_in('confirm_password', with:'Foobar1')
      click_button('Register')

      expect(page).to have_content 'Tervetuloa!'
      expect(page).to have_content 'Pekka'
    end
  end
