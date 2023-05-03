require_relative '../pages/HomePage.rb'
require_relative '../pages/ResultPage.rb'
require 'rspec'


Given('a user goes to Vivino home page') do
begin
  @vivino_page = Homepage.new(@browser)
  @vivino_page.visit_vivino_site
rescue => e
  puts "An error of type #{e.class} happened, message is #{e.message}"
end
end

When('a user search for {string}') do |string|
  begin
    @vivino_page.enter_search_keyword(string)
    @vivino_page.click_search_button
  rescue => e
  puts "An error of type #{e.class} happened, message is #{e.message}"
end
end

Then('Vivino should return result for search') do
  begin
    res = @browser.divs(class: /card_/)
  rescue => e
    puts "An error of type #{e.class} happened, message is #{e.message}"
  end
  expect(res).should_not be_nil
end

Then('Test should parse the resultss') do
  begin
    res = @browser.divs(class: /card_/)
  rescue => e
  puts "An error of type #{e.class} happened, message is #{e.message}"
  end
  expect(res).should_not be_nil
end

Then('Write them to a console according to {string}') do |string|
begin
  res = @browser.divs(class: /card_/)
  res.each do |e|
    contain = []
    not_contain = []
    if  e.div(class: /wineInfo/).text.include?(string)
        contain << e
    else
        not_contain << e
    end
  end
  puts 'Contains ' + contain
  puts 'Not contain ' + not_contain
rescue => e
  puts "An error of type #{e.class} happened, message is #{e.message}"
  end
end

Then('User click on random search result') do
  begin
      res = @browser.divs(class: /wineCard__topSection/).click
    rescue => e
  puts "An error of type #{e.class} happened, message is #{e.message}"
  end
end

Then('Validate the page') do
begin
 @resultpage = ResultPage.new(@browser)
 @resultpage.awinery.present?
rescue => e
puts "An error of type #{e.class} happened, message is #{e.message}"
end

end

Then('Page should contaain {string}') do |string|
  begin
    @resultpage = ResultPage.new(@browser)
    @resultpage.breadcrumbs.include?(string)
  rescue => e
  puts "An error of type #{e.class} happened, message is #{e.message}"
  end
end
