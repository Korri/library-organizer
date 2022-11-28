require 'slop'

module Library
  module Organizer
    class CLI
        def call
            opts = Slop.parse do |o|
                o.bool '-d', '--dry-run', 'Pretend to run, but don\'t move/copy any files'
                o.separator ''
                o.separator 'other options:'
                o.bool '-v', '--verbose', 'enable verbose mode'
                o.on '--version' do
                  puts VERSION
                  exit
                end
                o.on '--help' do
                  puts o
                  exit
                end
            end

            print "Done...\n"
        end
    end
  end
end
