I needed a numeric keypad for some software, so I made a touchscreen remote control numeric keypad for my iPhone.

There's software that already does this (NumberKey) but this doesn't have a client software for *nix.

This runs on ruby/sinatra, serving up some HTML showing a numeric keypad for the iPhone

Prerequisites
=============

- sinatra `gem install sinatra`
- haml `gem install haml`
- xdotool `sudo apt-get install xdotool`

When you tap buttons, HTTP requests are made back to sinatra, which invokes xdotool to send the corresponding X event to the active window.

Usage
=====
Run the server: `ruby numkeys`
Browse to the server from your iphone: `http://your.computers.ip.address:4567/`
Tap the numeric keypad buttons on the phone screen

Limitations
===========

- There's no authentication (anyone could send keyboard events to your computer)
- It'll only work with X11 (no windows/mac)
- Pressing and holding keys only sends one keypress event at the moment

Credits
=======
- Mark Hansen - Programming
- Ryan Delaney - Graphic Design
