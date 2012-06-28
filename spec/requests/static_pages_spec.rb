require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Pagina de inicio" do
    before { visit root_path }

    #it { should have_selector('h1', text: 'Kairn Telest') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Inicio') }
  end

  describe "Pagina de ayuda" do
    before { visit ayuda_path }
    
    it { should have_selector('h1', text: 'Ayuda') }
    it { should have_selector('title', text: full_title('Ayuda')) }
  end

  describe "Pagina de acerca" do
    before { visit about_path }
    
    it { should have_selector('h1', text: 'Acerca de') }
    it { should have_selector('title', text: full_title('About')) }
  end


end

