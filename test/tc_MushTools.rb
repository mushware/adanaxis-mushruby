#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/tc_MushTools.rb
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
#%Header } ZdPeZr1LHEhMVZ+sCn4S6g
# $Id: tc_MushTools.rb,v 1.3 2006/08/01 17:21:16 southa Exp $
# $Log: tc_MushTools.rb,v $
# Revision 1.3  2006/08/01 17:21:16  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:10  southa
# Pre-release updates
#

require 'test/unit'
require 'MushTools.rb'

class TestMushTools < Test::Unit::TestCase
  def test_simple
    vec1 = MushVector.new(1,0,0,0)
    rot1 = MushTools.cRotationInXYPlane(Math::PI/2)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(0,1,0,0), 1e-6))
    rot1 = MushTools.cRotationInYZPlane(Math::PI/2)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(0,0,1,0), 1e-6))
    rot1 = MushTools.cRotationInZWPlane(Math::PI/2)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(0,0,0,1), 1e-6))
    rot1 = MushTools.cRotationInXWPlane(-Math::PI/2)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(1,0,0,0), 1e-6))
    rot1 = MushTools.cRotationInXZPlane(Math::PI/2)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(0,0,1,0), 1e-6))
    rot1 = MushTools.cRotationInYZPlane(-Math::PI/2)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(0,1,0,0), 1e-6))
    rot1 = MushTools.cRotationInYWPlane(Math::PI/2)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(0,0,0,1), 1e-6))

    vec1 = MushVector.new(1,0,0,0)
    rot1 = MushTools.cRotationInXYPlane(Math::PI/2)
    rot2 = MushTools.cRotationInYZPlane(Math::PI/2)

    # rot1 becomes a rotation that applies rot1 then rot2
    rot2.mRotate(rot1)
    rot1.mRotate(vec1)
    assert(vec1.mApproxEqual(MushVector.new(0,0,1,0), 1e-6))
  end
end

