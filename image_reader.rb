class ImageReader
  def initialize(path)
    @path=path
  end

  def getImagesArray
    imagesArray=[]
    for i in 0..7
      file=@path+"#{i}.txt"
      imagesArray<<getImage(file)
    end
    return imagesArray
  end

  def getImage(file)
    begin
      f=File.new file,"r:UTF-8"
      return f.readlines
    rescue SystemCallError => error
      arr=[]
      (7).times do
        arr<<error.message
      end
      return arr
    end
  end
end