require 'spec_helper'

describe "Static pages" do
subject { page }
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