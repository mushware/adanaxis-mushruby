#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushConfig.rb
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
#%Header } PtLZvZtzd9aRiKZ8J3BOaQ
# $Id: MushConfig.rb,v 1.4 2006/08/01 17:21:11 southa Exp $
# $Log: MushConfig.rb,v $
# Revision 1.4  2006/08/01 17:21:11  southa
# River demo
#
# Revision 1.3  2006/08/01 13:41:06  southa
# Pre-release updates
#

class MushConfig
  def initialize
  end

  def self.cApplPath
    $MUSHCONFIG['APPLPATH']
  end
  def self.cGlobalMushPath
    $MUSHCONFIG['APPLPATH']+"/mush"
  end
  def self.cGlobalPixelsPath
    $MUSHCONFIG['APPLPATH']+"/pixels"
  end
  def self.cGlobalSpacesPath
    $MUSHCONFIG['APPLPATH']+"/spaces"
  end
  def self.cGlobalWavesPath
    $MUSHCONFIG['APPLPATH']+"/waves"
  end

end
