#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/tc_MushVector.rb
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
#%Header } iT6tycmkmTcONjwY44G/Yw
# $Id: tc_MushVector.rb,v 1.2 2006/08/01 13:41:10 southa Exp $
# $Log: tc_MushVector.rb,v $
# Revision 1.2  2006/08/01 13:41:10  southa
# Pre-release updates
#

require 'test/unit'

class TestMushVector < Test::Unit::TestCase
  def test_simple
    vec1 = MushVector.new(1,2,3,4);
    vec2 = MushVector.new(2,3,5,7);
    assert_equal(vec1+vec2, MushVector.new(3,5,8,11));
  end
end
