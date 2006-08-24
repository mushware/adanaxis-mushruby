#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushEvent.rb
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
#%Header } X5s8C2MaUiV+3T55nvieig
# $Id: MushEvent.rb,v 1.1 2006/08/17 08:57:10 southa Exp $
# $Log: MushEvent.rb,v $
# Revision 1.1  2006/08/17 08:57:10  southa
# Event handling
#

class MushEvent < MushObject
  def initialize
  end
  
  attr_accessor :src, :dest
end
