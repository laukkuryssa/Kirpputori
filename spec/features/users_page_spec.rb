require 'rails_helper'

describe "who has just signed up" do
    it "can signup with right credentials" do
      visit signup_path
      fill_in('Username', with:'MasaMatti')
      fill_in('Password', with:'Teppo1')
      fill_in('Password confirmation', with:'Teppo1')
      click_button('Create User')

      expect(page).to have_content 'Rekisteröityminen onnistui, ei muuta kuin kirjautumaan!'
    end
  end

describe "who has just tried to sign up and failed" do
    it "can signup with right credentials" do
      visit signup_path
      fill_in('Username', with:'Masa')
      fill_in('Password', with:'masa')
      fill_in('Password confirmation', with:'masa')
      click_button('Create User')

      expect(page).to have_content 'Username'
      expect(page).to have_content 'Password'
      expect(page).to have_content 'Password confirmation'
    end
  end

describe "who has just created account and first tries to log in with invalid password and second time passes in" do
    it "can signup with right credentials" do
      visit signup_path
      fill_in('Username', with:'Masamainio')
      fill_in('Password', with:'Masa1')
      fill_in('Password confirmation', with:'Masa1')
      click_button('Create User')

      visit signin_path
      fill_in('username', with:'Masamainio')
      fill_in('password', with:'Masa2')
      click_button('Log in')
      
      expect(page).to have_content 'Käyttäjätunnus tai salasana väärin.'
      expect(page).to have_content 'Sign in'

      fill_in('username', with:'Masamainio')
      fill_in('password', with:'Masa1')
      click_button('Log in')

      expect(page).to have_content 'Tervetuloa!'
      expect(page).to have_content 'All items'
    end
  end
