# coding: utf-8

class SelectPlayer

  IMAGE_CHANGE_COUNT = 45
 
  def initialize
    bg_files = [
      File.join(File.dirname(__FILE__), "..", "images", "top5.png"),
    ]


    @background_imgs = bg_files.map { |bg_file|  Image.load(bg_file)}
    @count=0
    @image_index = 0

  
  @sound = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "select.wav"))  
  @sound_played = false
 
  end

  def play
    Window.draw(0, 0, @background_imgs[@image_index])
    
    
   if !@sound_played
      @sound.play
      @sound_played = true
    end

    if Input.keyPush?(K_SPACE)
      Scene.set_scene(:game)
    end
  end
  
  def check_number
    x = Input.mousePosX
    y = Input.mousePosY
    pos1 = [5, 198]
    pos2 = [167, 314]
    if x < pos2[0] && x > pos1[0] && y < pos2[1] && y > pos1[1]      
      Scene.scenes[:game].set_player_number(1)
      
      @sound1 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice1.wav"))  
      @sound1.play
      
    end
    
    pos1 = [201, 196]
    pos2 = [362, 309]
    if x < pos2[0] && x > pos1[0] && y < pos2[1] && y > pos1[1]      
      Scene.scenes[:game].set_player_number(2)
      
      @sound2 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice2.wav"))  
      @sound2.play
      
    end
    
    pos1 = [409, 197]
    pos2 = [573, 299]
    if x < pos2[0] && x > pos1[0] && y < pos2[1] && y > pos1[1]      
      Scene.scenes[:game].set_player_number(3)
      
      @sound3 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice3.wav"))  
      @sound3.play
      
    end
    
    pos1 = [605, 204]
    pos2 = [769, 310]
    if x < pos2[0] && x > pos1[0] && y < pos2[1] && y > pos1[1]      
      Scene.scenes[:game].set_player_number(4)
      
      @sound4 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice4.wav"))  
      @sound4.play
      
    end
    
    
  end
  
  
  def finished?
  
    if Input.mousePush?(M_LBUTTON)
     #check_number
      return true
      else
      return false
    end
    
    
  end
end


