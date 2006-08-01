#%Header {
##############################################################################
#
# File: data-adanaxis/mushruby/test/tc_MushRotation.rb
#
# Author: Andy Southgate 2006
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
#%Header } 0gK19bWG34glVPTfT65THA
# $Id$
# $Log$

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
