class Command
  attr_reader :dir_name, :header, :max
  def initialize(dir_name,header,max)
    @dir_name = dir_name
    @header = header
    @max  = max
  end
end
