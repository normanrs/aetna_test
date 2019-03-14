Given("Visitor is on Home Page") do 
  expect(URI.parse(current_url).to_s).to eq('https://www.aetna.com/')
end

When("Visitor clicks on the informational links in footer") do 
  # class="link__text--footer"
  within('.footer__content__wrapper') do 
    links = all('a').map { |a| a['href'] }
    @results = links.map do |link|
      visit(link)
      link == current_url
    end
  end
  
end

Then("They are taken to the appropriate page") do 
  @results.each do |result| 
    expect(result).to be(true)
  end
end
