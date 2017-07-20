# coding: utf-8
class DirRepository
  # 仕様を見てコードを追加
  attr_reader :dir_name, :header, :num

  # 仕様を見てコードを追加
  def initialize(dir_name, header, num)
    @dir_name = dir_name
    @header = header
    @num = num
  end

  # メソッドの中身のコードを追加
  def make
    Dir.mkdir(@dir_name,0705) 
    create_directories.each{|x|Dir.mkdir("#{@dir_name}/#{x}",0705)}
  end

  def create_directories
    (1..@num).map{|n| @header+"%02d" % n}
  end

end

dir = DirRepository.new("Prog0","Ex",13)
dir.make
