require 'spec_helper'

describe "StaticPages" do

  subject {page}

  describe "Home page" do
    before {visit root_path}

    it {should have_content('Sweet Home')}
    it {should have_title('Jing AND Ben')}
  end

  describe "Help page" do
    before{visit help_path}

    it {should have_content('help')}
    it {should have_title('Jing AND Ben | Help')}
  end

  describe "About page" do
    before {visit about_path}

    it {should have_content('About')}
  end

  describe "Contact page" do
    before {visit contact_path}

    it {should have_content('Contact')}
    it {should have_title('Jing AND Ben | Contact')}
  end


end
