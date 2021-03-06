# coding: utf-8
require 'test/unit'
require_relative '../src/dir_repository.rb' 
# コードを追加

class DirRepositoryTest < Test::Unit::TestCase
  def test_constructor
    # コードを追加
    dir_generator = DirRepository.new("Prog0", "Ex",13 )
    assert_equal "Prog0", dir_generator.dir_name
    assert_equal "Ex", dir_generator.header
    # コードを追加(他のテスト項目)

  end
  def test_createRepository
    dir_generator = DirRepository.new("Prog0", "Ex",3 )
    assert_equal ["Ex01", "Ex02","Ex03"],dir_generator.create_directories
  end
end
