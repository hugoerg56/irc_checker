require 'rubygems'
require 'capybara'
require 'capybara/dsl'

Capybara.current_driver = :selenium
Capybara.app_host = 'http://bestmexicanresort.com'
Capybara.run_server = false

class BestMexican
  include Capybara
  def newslleter_en
    visit('http://bestmexicanresort.com/')
    fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    click_button "Subscribe"
    page.has_content?('thanks for giving us your information! Our deals and specials are worth it')
  end

  def newslleter_es
    visit('http://bestmexicanresort.com/es/')
    fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    click_button "Subscribe"
    page.has_content?('Gracias por darnos tu informacion! Nuestros paquetes y promociones lo valen.')
  end

  def reservation_en
    visit('http://bestmexicanresort.com/')
    select('Belair', :from => 'package')
    fill_in "date", :with => "10/19/2010"
    fill_in "adults", :with => "1"
    fill_in "children", :with => "1"
    fill_in "nights", :with => "1"
    click_button "check availability"
    fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    fill_in "phone", :with => "12345"
    fill_in "address", :with => "testing"
    fill_in "city", :with => "Maracaibo"
    fill_in "country", :with => "Venezuela"
    click_button "submit"
    page.has_content?('Thanks for contacting us!')
  end

  def reservation_es
    visit('http://bestmexicanresort.com/es/')
    select('Belair', :from => 'package')
    fill_in "date", :with => "10/19/2010"
    fill_in "adults", :with => "1"
    fill_in "children", :with => "1"
    fill_in "nights", :with => "1"
    click_button "check availability"
    fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    fill_in "phone", :with => "12345"
    fill_in "address", :with => "testing"
    fill_in "city", :with => "Maracaibo"
    fill_in "country", :with => "Venezuela"
    click_button "submit"
    page.has_content?('Thanks for contacting us!')
  end


end

@runner = BestMexican.new
#@runner.newslleter_en
@runner.reservation_en


