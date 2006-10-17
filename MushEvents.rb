#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushEvents.rb
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
#%Header } d7jyV7hPEwSRQCEPyKVK4w
# $Id: MushEvents.rb,v 1.4 2006/10/14 16:59:43 southa Exp $
# $Log: MushEvents.rb,v $
# Revision 1.4  2006/10/14 16:59:43  southa
# Ruby Deco objects
#
# Revision 1.3  2006/10/13 14:21:25  southa
# Collision handling
#
# Revision 1.2  2006/10/12 22:04:45  southa
# Collision events
#
# Revision 1.1  2006/10/09 16:00:14  southa
# Intern generation
#
# Revision 1.1  2006/08/17 08:57:10  southa
# Event handling
#

require 'MushEvent.rb'

class MushEventTimer < MushEvent
  def initialize
    @id = 0
  end
  attr_accessor :id
end

class MushEventCollision < MushEvent
  mush_accessor :m_piece1, :m_piece2, :m_chunkNum1, :m_chunkNum2
  
  def mPiecesSwap!
    @m_piece1, @m_piece2 = @m_piece2, @m_piece1
    @m_chunkNum1, @m_chunkNum2 = @m_chunkNum2, @m_chunkNum1
  end
end

class MushEventExpiry < MushEvent
end
