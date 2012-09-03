# coding: Shift_JIS

class Map

  def initialize(map_path)
    @img = Image.load(map_path)
    @x = Window.width - @img.width
    @y = 0
    @speed = 3
  end

  def x
    @x
  end
  
  def y
    @y
  end  
  
  def draw
    Window.draw(@x, @y, @img)
  end

  def scroll
    if Input.keyDown?(K_RIGHT)
       @x -= @speed if @x > -(@img.width - Window.width)
    end

    if Input.keyDown?(K_LEFT)
       @x += @speed if @x < -4
    end

    if Input.keyDown?(K_DOWN)
       @y -= @speed if @y > -(@img.height - Window.height)
    end

    if Input.keyDown?(K_UP) 
       @y += @speed if @y < 0
    end

  end

end
