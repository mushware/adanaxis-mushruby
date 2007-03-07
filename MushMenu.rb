#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushMenu.rb
#
# Author Andy Southgate 2006
#
# This file contains original work by Andy Southgate.  The author and his
# employer (Mushware Limited) irrevocably waive all of their copyright rights
# vested in this particular version of this file to the furthest extent
# permitted.  The author and Mushware Limited also irrevocably waive any and
# all of their intellectual property rights arising from said file and its
# creation that would otherwise restrict the rights of any party to use and/or
# distribute the use of, the techniques and methods used herein.  A written
# waiver can be obtained via http://www.mushware.com/.
#
# This software carries NO WARRANTY of any kind.
#
##############################################################################
#%Header } TVAlCE/bR+J6ZLEFw8GJ3Q
# $Id: MushMenu.rb,v 1.9 2006/11/08 18:30:53 southa Exp $
# $Log: MushMenu.rb,v $
# Revision 1.9  2006/11/08 18:30:53  southa
# Key and axis configuration
#
# Revision 1.8  2006/08/01 17:21:13  southa
# River demo
#
# Revision 1.7  2006/08/01 13:41:07  southa
# Pre-release updates
#

class MushMenu
  MENU_STRING = 0
  MENU_SYMBOL = 1
  MENU_PARAM = 2
  MENU_FLAGS = 3
  
  YCOORD_DEFAULT = 0.22
  YCOORD_CENTRE = -0.18
  
  def initialize(params)
    @title = params[:title]
    @menu = params[:menu]
    @font = MushGLFont.new(:name => 'library-font1');
    @size = params[:size] || 0.02
    @spacing = params[:spacing] || 1.2
    @current = 0
    @colour = params[:colour] || MushVector.new(1,1,1,0.3)
    @highlight_colour = params[:highlight_colour] || MushVector.new(1,1,1,1)
    @m_grey_colour = params[:grey_colour] || MushVector.new(1,1,1,0.1)
    @title_colour = params[:title_colour] || MushVector.new(1,1,1,1)
    @yCoord = YCOORD_DEFAULT
    @leftright = params[:leftright] || false
  end

  attr_accessor :title, :menu, :font, :size, :spacing, :current, :colour, :highlight_colour, :title_colour, :leftright

  def mRender(msec)
    xCoord = -0.42
    
    newYCoord = @current * @size * @spacing + YCOORD_CENTRE
    newYCoord = YCOORD_DEFAULT if newYCoord < YCOORD_DEFAULT
    
    @yCoord = 0.875 * @yCoord + 0.125 * newYCoord
    yCoord = @yCoord
    
    if @title
      @font.colour = @title_colour      
      @font.mRenderAtSize(@title, xCoord, yCoord, @size)
      yCoord -= @size * @spacing * 1.2
    end
    
    @menu.each_index do |i|
      item = @menu[i]
      
      if item[MENU_FLAGS] && item[MENU_FLAGS][:grey]
        @font.colour = @m_grey_colour
      elsif i == @current
        @font.colour = @highlight_colour
      else
        @font.colour = @colour      
      end

      @font.mRenderAtSize(item[MENU_STRING], xCoord, yCoord, @size)
      yCoord -= @size * @spacing
    end
  end

  def mLeft(obj)
    if @leftright && @current < @menu.size
      symbol = @menu[@current][MENU_SYMBOL]
      obj.send(symbol, @menu[@current][MENU_PARAM], -1)
    end
  end
  
  def mRight(obj)
    if @leftright && @current < @menu.size
      symbol = @menu[@current][MENU_SYMBOL]
      obj.send(symbol, @menu[@current][MENU_PARAM], 1)
    end
  end
  
  def mUp
    @menu.size.times do
      @current = (@current + @menu.size - 1) % @menu.size
      item = @menu[@current]
      break unless item[MENU_FLAGS] && item[MENU_FLAGS][:grey]
    end
  end
    
  def mDown
    @menu.size.times do
      @current = (@current + 1) % @menu.size
      item = @menu[@current]
      break unless item[MENU_FLAGS] && item[MENU_FLAGS][:grey]
    end
  end
    
  def mEnter(obj)
    if @current < @menu.size
      symbol = @menu[@current][MENU_SYMBOL]
      obj.send(symbol, @menu[@current][MENU_PARAM], 0)
    end
  end

  def mKeypress(obj, inKey)
    if (@current < @menu.size)
      symbol = @menu[@current][MENU_SYMBOL]
      obj.send(symbol, inKey, @menu[@current][MENU_PARAM])
    end
  end
  
end
  
