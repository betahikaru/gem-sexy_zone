require "sexy_zone"
require "thor"

module SexyZone
  class CLI < Thor

    desc "site", "Open SexyZone offcial site."
    def site()
      uri = "http://sexyzone.ponycanyon.co.jp/"
      command = "open"
      system "#{command} #{uri}"
    end

    desc "member [option]", "Let's join the members of SexyZone!"
    option :add, :type => :string, :aliases => '-a', :desc => "Join new member."
    option :list, :type => :boolean, :aliases => '-l', :desc => "Show all member's name."
    def member
      names = Array[
        "Shori Sato",
        "Kento Nakajima",
        "Fuma Kikuchi",
        "So Matsushima",
        "Marius Yo"
      ]
      if options[:add]
        message = "'#{options[:add]}' is not suitable as a new member of SexyZone."
        say("ERROR: #{message}", :red)
      else
        names.each do |name|
            say(name)
        end
      end
    end

    desc "song [option]", "Let's release a new song of SexyZone!"
    option :add, :type => :string, :aliases => '-a', :desc => "Release new song."
    option :list, :type => :boolean, :aliases => '-l', :desc => "Show all song's name."
    def song
      songs = Array[
        "BAD BOYS"
      ]
      if options[:add]
        message = "'#{options[:add]}' is not suitable as a new song of SexyZone."
        say("ERROR: #{message}", :red)
      else
        songs.each do |song|
            say(song)
        end
      end
    end

  end
end
