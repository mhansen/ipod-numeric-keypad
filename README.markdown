<table><tr><td>
<h1>Mobile Numeric Keypad</h1>
<p>I needed a numeric keypad for some software, so I made a touchscreen remote control numeric keypad for my iPhone.</p>

<p>There's software that already does this (NumberKey) but this doesn't have a client software for *nix.</p>

<p>This runs on ruby/sinatra, serving up some HTML showing a numeric keypad for the iPhone.</p>
</td>
<td>
<img src='http://i.imgur.com/8tWqW.png' style='float:right'>
</td></tr></table>

Prerequisites
=============

- sinatra `gem install sinatra`
- haml `gem install haml`
- xdotool `sudo apt-get install xdotool` (`sudo port install xdotool` if on Mac. Requires <a href="http://www.macports.org/">MacPorts</a>)

When you tap buttons, HTTP requests are made back to sinatra, which invokes xdotool to send the corresponding X event to the active window.

Usage
=====
Run the server: `ruby numkeys`
Browse to the server from your iphone: `http://your.computers.ip.address:4567/`
Tap the numeric keypad buttons on the phone screen

Limitations
===========

- There's no authentication (anyone could send keyboard events to your computer)
- It'll only work with X11 (no windows)
- Pressing and holding keys only sends one keypress event at the moment

Credits
=======
- Mark Hansen - Programming
- Ryan Delaney - Graphic Design
