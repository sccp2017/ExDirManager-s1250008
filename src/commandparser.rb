# coding: utf-8
class CommandParser
  def initialize(argv)
    @argv = argv
  end
  
  def parse()
    # Hashの生成
    hash = Hash[*@argv]
    dir_name = hash["generate"]
    header = hash["-h"]
    max = hash["-m"].to_i
    Command.new(dir_name,header,max)
  end
end
