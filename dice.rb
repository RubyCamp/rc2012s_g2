# coding : Shift_JIS

require "dxruby"

class Dice
  attr_accessor :result

  def initialize()
    @x = 10
    @y = 10
    @images = []
    @images << Image.load("./images/dice1.png")
    @images << Image.load("./images/dice2.png")
    @images << Image.load("./images/dice3.png")
    @images << Image.load("./images/dice4.png")
    @images << Image.load("./images/dice5.png")
    @images << Image.load("./images/dice6.png")
    #@current_num = 0.0
    @rotate = 0.0
  end

  def enter
    @result = @rotate.to_i + 1
  end 
  
  def rotate
    @rotate += 0.3
    @rotate = 0.0 if @rotate.to_i >= @images.length
  end
  
  def draw
    Window.draw(@x, @y, @images[@rotate.to_i])
  end
  
  def draw_result
    Window.draw(@x, @y, @images[@result-1])
  end
  
end