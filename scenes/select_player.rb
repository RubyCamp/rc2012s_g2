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

    @pos1 = [5, 198]
    @pos2 = [167, 314]
    @pos3 = [201, 196]
    @pos4 = [362, 309]
    @pos5 = [409, 197]
    @pos6 = [573, 299]
    @pos7 = [605, 204]
    @pos8 = [769, 310]
    
  end

  def play
    Window.draw(0, 0, @background_imgs[@image_index])
    
    
   if !@sound_played
      @sound.play
      @sound_played = true
    end
  
  
    x = Input.mousePosX
    y = Input.mousePosY
    
    if x < @pos2[0] && x > @pos1[0] && y < @pos2[1] && y > @pos1[1] && Input.mousePush?(M_LBUTTON )     
     # Scene.scenes[:game].set_player_number(1)
      @sound.stop # new
      @sound1 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice1.wav"))  
      @sound1.play
      puts"1"
      
    end
    
    if x < @pos4[0] && x > @pos3[0] && y < @pos4[1] && y > @pos3[1] && Input.mousePush?(M_LBUTTON )      
     # Scene.scenes[:game].set_player_number(2)
      @sound.stop # new
      @sound2 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice2.wav"))  
      @sound2.play
    end
    
    if x < @pos6[0] && x > @pos5[0] && y < @pos6[1] && y > @pos5[1] && Input.mousePush?(M_LBUTTON )   
     # Scene.scenes[:game].set_player_number(3)
      @sound.stop # new
      @sound3 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice3.wav"))  
      @sound3.play
    end
    
    if x < @pos8[0] && x > @pos7[0] && y < @pos8[1] && y > @pos7[1]  && Input.mousePush?(M_LBUTTON )
     #Scene.scenes[:game].set_player_number(4)
      @sound.stop # new
      @sound4 = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "voice4.wav"))  
      @sound4.play      
    end
    
  end  
  
  
  
  def finished?
    if Input.mousePush?(M_LBUTTON )
       sleep 1
       return true
    else
       return false
    end 
  end
end


