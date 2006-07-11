
class MushMenu
  MENU_STRING = 0
  MENU_SYMBOL = 1
  MENU_PARAM = 2
  
  def initialize(params)
    @title = params[:title]
    @menu = params[:menu]
    @font = MushGLFont.new(:name => 'library-font1');
    @size = params[:size] || 0.02
    @spacing = params[:spacing] || 1.2
    @current = 0
    @colour = params[:colour] || MushVector.new(1,1,1,0.3)
    @highlight_colour = params[:highlight_colour] || MushVector.new(1,1,1,1)
    @title_colour = params[:title_colour] || MushVector.new(1,1,1,1)
  end

  attr_accessor :title, :menu, :font, :size, :spacing, :current, :colour, :highlight_colour, :title_colour

  def mRender(msec)
    xCoord = -0.4
    yCoord = 0.22
    
    if @title
      @font.colour = @title_colour      
      @font.mRenderAtSize(@title, xCoord, yCoord, @size)
      yCoord -= @size * @spacing * 1.2
    end
    
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
      obj.send(symbol, @menu[@current][MENU_PARAM])
    end
  end

  def mKeypress(obj, inKey)
    if (@current < @menu.size)
      symbol = @menu[@current][MENU_SYMBOL]
      obj.send(symbol, inKey, @menu[@current][MENU_PARAM])
    end
  end


    
end
  