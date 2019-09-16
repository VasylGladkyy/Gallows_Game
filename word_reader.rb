class WordReader
  def initialize(file)
    @file_path=File.dirname(__FILE__ )+file
  end

  def read_from_file
    returnValue="error"
    if File.exist? @file_path
      f=File.new @file_path,"r:UTF-8"
      returnValue=f.readlines.sample.chomp
      f.close
      return returnValue
    else
      return returnValue
    end
  end

end