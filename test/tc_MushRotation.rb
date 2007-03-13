#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/tc_MushRotation.rb
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
#%Header } jP2wEJiFseDt/BDuvlpUkA
# $Id: tc_MushRotation.rb,v 1.3 2006/08/01 17:21:16 southa Exp $
# $Log: tc_MushRotation.rb,v $
# Revision 1.3  2006/08/01 17:21:16  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:10  southa
# Pre-release updates
#

require 'test/unit'
require 'MushRotation.rb'

class TestMushRotation < Test::Unit::TestCase
  def test_simple
    vec1 = MushVector.new(1,0,0,0)
    vec1initial = vec1.clone
    rot1 = MushRotation.new
    assert_equal(vec1, vec1initial)
  end
end
