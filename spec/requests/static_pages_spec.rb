require 'spec_helper'

describe "Static pages" do
subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: 'Sign up') }
  end

  describe "inicio page" do
    before {visit root_path}
    it { should have_selector('h1', text: 'inicio')}
    it {should have_selector('title', text: full_title(''))}
  end

  describe "ayuda page" do

    before { visit ayuda_path }

    it { should have_selector('h1',    text: 'ayuda') }
    it { should have_selector('title', text: full_title('ayuda')) }
  end

  describe "contacto page" do

    before { visit contacto_path }

    it { should have_selector('h1',    text: 'contacto') }
    it { should have_selector('title', text: full_title('contacto')) }
  end

  describe "nosotros page" do

    before { visit nosotros_path }

    it { should have_selector('h1',    text: 'Nosotros') }
    it { should have_selector('title', text: full_title('nosotros')) }
  end

end