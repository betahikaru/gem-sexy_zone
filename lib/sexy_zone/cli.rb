require "sexy_zone"
require "thor"

module SexyZone
  class CLI < Thor
    # example for using command, and , abstract.
    desc "red WORD", "red words print."

    # define command as method.
    def red(word)
      say(word, :red)
    end
  end
end
