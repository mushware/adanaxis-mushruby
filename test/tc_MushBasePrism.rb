#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/tc_MushBasePrism.rb
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
#%Header } VkUR8n39h0YRFei8Jt7TzA
# $Id: tc_MushBasePrism.rb,v 1.2 2006/08/01 13:41:09 southa Exp $
# $Log: tc_MushBasePrism.rb,v $
# Revision 1.2  2006/08/01 13:41:09  southa
# Pre-release updates
#

class TestMushBasePrism < Test::Unit::TestCase
  def test_simple
    baseprism1 = MushBasePrism.new(5)
	baseprism1 = MushBasePrism.new(:order => 5)
	
	assert_raise(Exception) { MushBasePrism.new }
	assert_raise(Exception) { MushBasePrism.new(:not_a_param => 0) }

  end
end
