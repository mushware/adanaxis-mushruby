#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushHelpers.rb
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
#%Header } k9LZZo7TthLErE5xUlKI2w
# $Id: MushHelpers.rb,v 1.4 2006/11/03 18:46:30 southa Exp $
# $Log: MushHelpers.rb,v $
# Revision 1.4  2006/11/03 18:46:30  southa
# Damage effectors
#
# Revision 1.3  2006/08/01 17:21:12  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:07  southa
# Pre-release updates
#

# Format to strings for printing
class Array
  def cToPrint
    '['+join(', ')+']'
  end
end

class Numeric
  def mClamp(inMin, inMax)
    return inMin if self < inMin
    return inMax if self > inMax
    return self
  end
end
