# ~~Covfefe~~ Coffee Wand

# TODO:
- use docker library instead of `System.cmd`

This is a tiny elixir program that I can use to turn on my coffee machine over the network. I have another script monitoring my dbus for successful login events, this gets called when it sees one.

The main thing to look at it `lib/covfefe.rb` which has all the necessary logic. 

## Installation

clone the file then run `mix escript.build` after editing the `config/config.exs` file to point:
- `wemo_ip` at your wemo switch
- `image` at the docker image to run the wemom cli. 

Then you will have a nice binary in your directeory to run
