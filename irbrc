require 'irb/completion'
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true


require 'pp'

require 'rubygems'

require 'columnize'

require 'colored'

require 'wirble'

colors = Wirble::Colorize.colors.merge({

      # delimiter colors
      :comma              => :light_blue,
      :refers             => :light_blue,

      # container colors (hash and array)
      :open_hash          => :light_green,
      :close_hash         => :light_green,
      :open_array         => :light_green,
      :close_array        => :light_green,

      # object colors
      :open_object        => :light_red,
      :object_class       => :white,
      :object_addr_prefix => :light_blue,
      :object_line_prefix => :light_blue,
      :close_object       => :light_red,

      # symbol colors
      :symbol             => :light_red,
      :symbol_prefix      => :light_red,

      # string colors
      :open_string        => :light_red,
      :string             => :red,
      :close_string       => :light_red,

      # misc colors
      :number             => :brown,
      :keyword            => :cyan,
      :class              => :light_green,
      :range              => :yellow,
    })

    #
    # Fruity testing colors.
    #
    TESTING_COLORS = {
      :comma            => :red,
      :refers           => :red,
      :open_hash        => :blue,
      :close_hash       => :blue,
      :open_array       => :light_green,
      :close_array      => :light_green,
      :open_object      => :light_red,
      :object_class     => :light_green,
      :object_addr      => :purple,
      :object_line      => :light_purple,
      :close_object     => :light_red,
      :symbol           => :yellow,
      :symbol_prefix    => :yellow,
      :number           => :cyan,
      :string           => :cyan,
      :keyword          => :white,
      :range            => :light_blue,
    }

# start wirble (with color)
Wirble::Colorize.colors = colors

Wirble.init
Wirble.colorize

def qri(arg)
  system "qri #{arg}"
end


class Object
  def my_methods
    results = (methods - Object.instance_methods).sort
    results.collect! do |e|
      # 'black'   => 30,
      # 'red'     => 31,
      # 'green'   => 32,
      # 'blue'    => 34,
      # 'yellow'  => 33,
      # 'magenta' => 35,
      # 'cyan'    => 36,
      # 'white'   => 37
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

# stick in .irbrc
def copy(str)
  IO.popen('pbcopy', 'w') { |f| f << str.to_s }
end

def paste
  `pbpaste`
end

def ep
  eval(paste)
end


require 'hirb'
Hirb.enable
extend Hirb::Console

class Array
  def table(args = {})
    args.merge!(:class=>"Hirb::Helpers::AutoTable") unless args[:class]
    Hirb::Console.render_output(self, args )
  end
end
