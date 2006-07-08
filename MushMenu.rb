
class MushMenu
  MENU_STRING = 0
  MENU_SYMBOL = 1
  
  def initialize(params)
    @menu = params[:menu]
    @font = MushGLFont.new(:name => 'library-font1');
    @size = params[:size] || 0.02
    @spacing = params[:spacing] || 1.2
    @current = 0
    @colour = params[:colour] || MushVector.new(1,1,1,0.3)
    @highlight_colour = params[:highlight_colour] || MushVector.new(1,1,1,1)
  end

  attr_accessor :menu, :font, :size, :spacing, :current, :colour, :highlight_colour

  def mRender(msec)
    xCoord = -0.4
    yCoord = 0.22
    @menu.each_index do |i|
      if i == @current
        @font.colour = @highlight_colour
      else
        @font.colour = @colour      
      end
      
      item = @menu[i]
      @font.mRenderAtSize(item[MENU_STRING], xCoord, yCoord, @size)
      yCoord -= @size * @spacing
    end
  end
  
  def mUp
    @current = (@current + @menu.size - 1) % @menu.size
  end
    
  def mDown
    @current = (@current + 1) % @menu.size
  end
    
  def mEnter(obj)
    if (@current < @menu.size)
      symbol = @menu[@current][MENU_SYMBOL]
      obj.send(symbol)
    end
  end
    

    
end
  