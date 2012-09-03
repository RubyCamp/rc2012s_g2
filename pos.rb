class Pos
  attr_accessor :name, :nextpos1, :nextpos2, :pos_x, :pos_y

  
  def initialize(name, nextpos1, nextpos2, pos_x, pos_y)#, event_number)
    @nextpos1 = nextpos1
    @nextpos2 = nextpos2
    @name = name
    @pos_x = pos_x
    @pos_y = pos_y
    #@event_number = event_number
  end
  
  def next
    return @next
  end
    
    
end

  