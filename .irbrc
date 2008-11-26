require 'irb/completion'
IRB.conf[:AUTO_INDENT]=true

require 'rubygems'

require 'wirble'
Wirble.init
Wirble.colorize

def qri(arg)
  system "qri #{arg}"
end
