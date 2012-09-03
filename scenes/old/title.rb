# coding: utf-8

class Title

  IMAGE_CHANGE_COUNT = 45


  
  
  def initialize
    bg_files = [
      File.join(File.dirname(__FILE__), "..", "images", "topc.png"),
      File.join(File.dirname(__FILE__), "..", "images", "top1.png"),
      File.join(File.dirname(__FILE__), "..", "images", "top2.png"),
      File.join(File.dirname(__FILE__), "..", "images", "top3.png"),
      File.join(File.dirname(__FILE__), "..", "images", "top4.png"),
      File.join(File.dirname(__FILE__), "..", "images", "top4.5.png"),
    ]


    @background_imgs = bg_files.map { |bg_file|  Image.load(bg_file)}
    @count=0
    @image_index = 0

  @sound = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "train1.wav"))  
  @sound_played = false
  
  end

  def play
    Window.draw(0, 0, @background_imgs[@image_index])
    @count += 1
    if @count > IMAGE_CHANGE_COUNT && @image_index < (@background_imgs.length - 1) 
      @image_index += 1
      @count = 0
    end
    
    if !@sound_played
      @sound.play
      @sound_played = true
    #  Sound.setVolume(280, time=0 )
    end
    
    
    if Input.keyPush?(K_SPACE)
        Scene.set_scene(:game)
      end
    end
  
  def finished?
    (@count > IMAGE_CHANGE_COUNT) && (@image_index == (@background_imgs.length - 1))
  end
end
