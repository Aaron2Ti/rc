require 'irb/completion'
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

require 'pp'

require 'rubygems'

require 'columnize'
require 'colored'
# require 'guessmethod'
require 'wirble'
Wirble.init
Wirble.colorize

def qri(arg)
  system "qri #{arg}"
end


class Object
  def my_methods
    results = (methods - Object.instance_methods).sort
    results.collect! do |e| 
#     'black'   => 30,
#     'red'     => 31, 
#     'green'   => 32, 
#     'blue'    => 34,
#     'yellow'  => 33,
#     'magenta' => 35,
#     'cyan'    => 36,
#     'white'   => 37
      case e
      when /^a/i then e = e.bold.red
      when /^b/i then e = e.bold.green
      when /^c/i then e = e.bold.blue 
      when /^d/i then e = e.bold.yellow
      when /^e/i then e = e.bold.magenta
      when /^f/i then e = e.bold.cyan
      when /^g/i then e = e.bold.red    
      when /^h/i then e = e.bold.green  
      when /^i/i then e = e.bold.blue   
      when /^j/i then e = e.bold.yellow 
      when /^k/i then e = e.bold.magenta
      when /^l/i then e = e.bold.cyan   
      when /^m/i then e = e.bold.red     
      when /^n/i then e = e.bold.green   
      when /^o/i then e = e.bold.blue    
      when /^p/i then e = e.bold.yellow  
      when /^q/i then e = e.bold.magenta 
      when /^r/i then e = e.bold.cyan    
      when /^s/i then e = e.bold.red     
      when /^t/i then e = e.bold.green   
      when /^u/i then e = e.bold.blue    
      when /^v/i then e = e.bold.yellow  
      when /^w/i then e = e.bold.magenta 
      when /^x/i then e = e.bold.cyan    
      when /^y/i then e = e.bold.red
      when /^z/i then e = e.bold.green
      else
        e = e.bold.white
      end
    end
    print Columnize::columnize(results, 190)
  end
end

alias q exit
