require 'test/unit/assertions'
include Test::Unit::Assertions

#------------

# "before all"
#Before do
#  @environment = 'https://maxt/exercises/collect/'
#end

# "after all"
After do
  @browser.close
end

#

