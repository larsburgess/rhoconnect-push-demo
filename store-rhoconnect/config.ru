#!/usr/bin/env ruby
require 'rhoconnect/application/init'

# secret is generated along with the app
Rhoconnect::Server.set     :secret,      'fb44747a0e4699561dc2007c775962afb301192b3c1b5f9f1123f4cd8855c4dd28c71bd01b989086ccd51ec1efc7f4e820c426b96f3f4d3a5f5aa5e79691aaa3'

# !!! Add your custom initializers and overrides here !!!
# For example, uncomment the following line to enable Stats
Rhoconnect::Server.enable  :stats
# uncomment the following line to disable Resque Front-end console
#Rhoconnect.disable_resque_console = true
# uncomment the following line to disable Rhoconnect Front-end console
#Rhoconnect.disable_rc_console = true

# Load RhoConnect application
require './application'

# run RhoConnect Application
run Rhoconnect.app