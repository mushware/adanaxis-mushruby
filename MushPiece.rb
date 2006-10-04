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
  end

  attr_reader :m_id, :m_post

  def mPostWRef
    @m_post
  end

  def mHandle(event)
    raise TypeError.new("Unhandled message #{event.class} in #{self.class}")
  end
end
