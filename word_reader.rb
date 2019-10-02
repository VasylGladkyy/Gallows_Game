class WordReader
  def initialize(file)
    @file_path=file
  end

  def read_from_file
    begin
      f=File.new @file_path,"r:UTF-8"
      returnValue=f.readlines.sample.chomp
      f.close
    rescue SystemCallError=>error
      abort "Проблеми при роботі з файлом зі словами\nДетальніше:"+error.message
      end
  end

end