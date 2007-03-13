#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushTimedValue.rb
#
# Author Andy Southgate 2006-2007
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
#%Header } vEjosFGeVKTj1+Ow9yQuyA
# $Id: MushTimedValue.rb,v 1.1 2006/11/01 10:07:12 southa Exp $
# $Log: MushTimedValue.rb,v $
# Revision 1.1  2006/11/01 10:07:12  southa
# Shield handling
#

require 'MushGame.rb'

class MushTimedValue
  def initialize(inValue = 0)
    @m_value = inValue
    @m_lastValue = 0
    @m_lastChangeMsec = 0
  end
  
  def mValue
    @m_value
  end
  
  def mValueSet(inValue)
    @m_value = inValue
    @m_lastChangeMsec = MushGame.cGameMsec
  end
  
  def mCompareAndSet(inValue)
    mValueSet(inValue) if @m_value != inValue
  end
  
  def mGameMsecSinceChange
    return MushGame.cGameMsec - @m_lastChangeMsec
  end
end
