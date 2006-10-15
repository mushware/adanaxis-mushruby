#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushPiece.rb
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
#%Header } IbOgoniOlrZVt52ex79DlA
# Class: MushPiece
#
# Description:
#
# This object contains a reference to a game piece.
#
# Method: new
#
# Creates a new MushPost object.  
#
# Parameters:
#
# type - Name of the type to use
#
# Returns:
#
# New MushPiece object
#
# Default:
#
# There is no default constructor.
#
# Example:
#
# (example)
# (end)
#
# Group: Links
#- Wrapper file:doxygen/class_mush_mesh_ruby_post.html
#- Implemetation file:doxygen/class_mush_mesh_posticity.html

class MushPiece < MushObject
  def initialize(inParams = {})
    raise "#{self.class} didn't set @m_defaultType before calling super" unless @m_defaultType
    type = inParams[:type] || @m_defaultType
    idSuffix = inParams[:id_suffix]
    
    @m_id = "#{type}:#{idSuffix}"
    
    @m_post = inParams[:post] || MushPost.new
    @m_meshName = inParams[:mesh_name] || ""
    @m_expireFlag = false
    @m_hitPoints = inParams[:hit_points] || 0.0
    @m_renderScale = inParams[:render_scale] || 1.0
    unless @m_renderScale.kind_of?(MushVector)
      @m_renderScale = MushVector.new(@m_renderScale, @m_renderScale, @m_renderScale, @m_renderScale)
    end
  end

  mush_reader :m_id
  mush_accessor :m_post, :m_hitPoints

  def mPostWRef
    @m_post
  end

  def mEventHandle(event)
    MushLog.cWarning "Unhandled message #{event.class} in #{self.class}"
  end
  
  def mFatalCollisionHandle(event)
    @m_expireFlag = true
  end

  def mCollisionHandle(event)
    if @m_hitPoints <= 0.0 && !@m_expireFlag
      @m_expireFlag = true
      mFatalCollisionHandle(event)
    end
  end
end
