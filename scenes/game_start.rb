# coding: utf-8

class GameStart

  IMAGE_CHANGE_COUNT = 180
 
  def initialize
    bg_files = [
      File.join(File.dirname(__FILE__), "..", "images", "start.png"),
    ]


    @background_imgs = bg_files.map { |bg_file|  Image.load(bg_file)}
    @count=0
    @image_index = 0

  end

  def play
    Window.draw(0, 0, @background_imgs[@image_index])
    @count += 1
    if @count > IMAGE_CHANGE_COUNT && @image_index < (@background_imgs.length - 1) 
      @image_index += 1
      @count = 0
    end

    if Input.keyPush?(K_SPACE)
      Scene.set_scene(:game)
    end
  end
  
  def finished?
    (@count > IMAGE_CHANGE_COUNT) && (@image_index == (@background_imgs.length - 1))
  end
end
