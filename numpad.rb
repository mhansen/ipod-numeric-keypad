require 'rubygems'
require 'sinatra'

configure do
    set :haml, :format => :html5
end

get '/' do
    haml :index
end

# xdotool takes KeySyms from /usr/include/X11/keysymdef.h (sans the XK_ prefix)
keysyms = {
    'zero' => 'KP_0',
    'one' => 'KP_1',
    'two' => 'KP_2',
    'three' => 'KP_3',
    'four' => 'KP_4',
    'five' => 'KP_5',
    'six' => 'KP_6',
    'seven' => 'KP_7',
    'eight' => 'KP_8',
    'nine' => 'KP_9',

    'multiply' => 'KP_Multiply',
    'divide' => 'KP_Divide',
    'add' => 'KP_Add',
    'subtract' => 'KP_Subtract',

    'decimal' => 'KP_Decimal',
    'enter' => 'KP_Enter'
}

post '/press/:key' do
    keysym = keysyms[params[:key]]
    system("xdotool key #{keysym}")
end
