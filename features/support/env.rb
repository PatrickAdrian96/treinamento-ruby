require "selenium-webdriver"
require "capybara"
require "site_prism"
require "rspec"
require "cucumber"

Capybara.registrer_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :remote, url => 'http://localhost:4444/wd/hub' :derired_capabilities => :chrome)

end

Capybara.configure do |config|
      config.run_server = false
      Capybara.default_driver = site_prism
      Capybara.page.driver.browser.manage.window.maximize       #Abrindo tela maximizada
      config.default_max_wait_time = 10                         #Tempo para aguardar a exibição de um elemento na tela
      config.app_host - 'http://www.automationpractice.com/index.php'    #Configuração de URL Inicial do site

end