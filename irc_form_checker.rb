require 'rubygems'
require 'capybara'
require 'capybara/dsl'

Capybara.current_driver = :selenium
Capybara.app_host = 'http://bestmexicanresort.com'
Capybara.run_server = false

#----------------  BestmexicanResor --------------------------
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
    page.has_content?('Gracias por contactarnos!')
  end

  def contact_en
    visit('http://bestmexicanresort.com/contact_us')
     fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    fill_in "phone", :with => "12345"
    fill_in "notes", :with => "testing"
    click_button "Send"
    page.has_content?('Thanks for contacting us!')
  end

  def contact_es
    visit('http://bestmexicanresort.com/es/contact_us')
     fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    fill_in "phone", :with => "12345"
    fill_in "notes", :with => "testing"
    click_button "Enviar"
    page.has_content?('Gracias por contactarnos!')
  end
end


#---------     ResortLuxury4Less     --------------------
class Resortluxury
  include Capybara
  def newslleter
    visit('http://resortluxury4less.com/')
    fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    click_button "Subscribe"
    page.has_content?('thanks for giving us your information! Our deals and specials are worth it')
  end

  def reservation
    visit('http://resortluxury4less.com/')
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

  def contact
    visit('http://bestmexicanresort.com/contact_us')
     fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    fill_in "phone", :with => "12345"
    fill_in "notes", :with => "testing"
    click_button "Send"
    page.has_content?('Thanks for contacting us!')
  end
end


#---------     LuxuryDays4Less     --------------------
class Luxurydays
  include Capybara
  def newslleter
    visit('http://luxurydays4less.com/')
    fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    click_button "Subscribe"
    page.has_content?('thanks for giving us your information! Our deals and specials are worth it')
  end

  def reservation
    visit('http://luxurydays4less.com/')
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

  def contact
    visit('http://luxurydays4less.com/contact_us')
     fill_in "first_name", :with => "hugo"
    fill_in "last_name", :with => "rincon"
    fill_in "email", :with => "hugo@bakedweb.net"
    fill_in "phone", :with => "12345"
    fill_in "notes", :with => "testing"
    click_button "Send"
    page.has_content?('Thanks for contacting us!')
  end
end



@runner = BestMexican.new
@runner.newslleter_en
@runner.newslleter_es
@runner.reservation_en
@runner.reservation_es
@runner.contact_en
@runner.contact_es

@runner = Resortluxury.new
@runner.newslleter
@runner.reservation
@runner.contact

@runner = Luxurydays.new
@runner.newslleter
@runner.reservation
@runner.contact
