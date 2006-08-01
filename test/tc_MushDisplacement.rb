#%Header {
##############################################################################
#
# File: data-adanaxis/mushruby/test/tc_MushDisplacement.rb
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
#%Header } b7pqXmTgK2dfuJn2dFetdA
# $Id$
# $Log$

require 'test/unit'

class TestMushDisplacement < Test::Unit::TestCase
  def test_simple
    disp1 = MushDisplacement.new()
	disp2 = MushDisplacement.new(
            :offset => MushVector.new(1,0,0,0),
            :rotation => MushTools.cRotationInZWPlane(Math::PI/2),
            :scale => 0.3)

	disp3 = MushDisplacement.new(
            :scale => MushVector.new(0.5,1,1,1))

	assert_raise(Exception) { MushDisplacement.new(:not_a_param => 0) }

  end
end
