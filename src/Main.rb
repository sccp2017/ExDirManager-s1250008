require_relative 'commandparser'
require_relative 'command'
require_relative 'dir_repository'
class Main
  def initialize
    command =  CommandParser.new(ARGV).parse
    DirRepository.new(command.dir_name,command.header,command.max).make
  end
end

Main.new
  
