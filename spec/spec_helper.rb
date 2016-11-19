require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color     = true
  config.platform  = 'centos'
  config.version   = '6.8'
  config.log_level = :fatal
end

at_exit { ChefSpec::Coverage.report! }
