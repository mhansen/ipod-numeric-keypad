#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'

configure do
    # make haml compile to html5 
    set :haml, :format => :html5
end

get '/' do
    # compile views/index.haml 
    haml :index
end

post '/press/:key' do
    # get the keycode for the numberpad key
    keysym = keysyms[params[:key]]
    # invoke xdotool to send the keypress to the active window
    system("xdotool key #{keysym}")
end

# keycode reference is at /usr/include/X11/keysymdef.h
# all of these are keypad events, so they start with 'KP_'
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
