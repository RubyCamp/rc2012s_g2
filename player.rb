# coding: Shift_JIS

class Player
  attr_accessor :x, :y, :pos, :money, :income
  
  def initialize(pos)
    @pos = pos
    @x = pos.pos_x
    @y = pos.pos_y
    @image = Image.load("./images/c1.png")
    @money = 0
    @income = 0
    @dest = @pos.nextpos1
  end
  
  def move
   # event = Event.new()
#     step.times do |i|
#       if @pos.nextpos2     #分岐処理
#        return step - i 
#      end
        @pos = @dest
        @dest = @pos.nextpos1
        
                
       if @pos.name == "goal"   #goalマスに着いたときの処理
        #goal eventの発生場所
           Window.draw(@pos.pos_x, @pos.pos_y, @image)
           p "goal!"
           exit
       end
#     end
  end
  
  def draw(scroll_x, scroll_y)
      Window.draw((scroll_x + @pos.pos_x), (scroll_y + @pos.pos_y), @image)
  end
  
  def select
    if @pos.nextpos2
      if @dest == @pos.nextpos1
        @dest = @pos.nextpos2
      else 
        @dest = @pos.nextpos1
      end
    end
    p "dest: #{@dest.name}"
  end
end