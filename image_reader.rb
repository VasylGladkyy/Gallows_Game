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
    if File.exist? file
      f=File.new file,"r:UTF-8"
      return f.readlines
    end
    return nil
  end
end