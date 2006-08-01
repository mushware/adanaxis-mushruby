#%Header {
##############################################################################
#
# File: data-adanaxis/mushruby/test/tc_MushExtruder.rb
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
#%Header } 8EURy+l+Ay6jonU+NxTDvQ
# $Id$
# $Log$

require 'test/unit'

class TestMushExtruder < Test::Unit::TestCase
  def test_simple
    extruder1 = MushExtruder.new(
        :sourceface => 0,
        :displacement => MushDisplacement.new(
            :offset => MushVector.new(1,0,0,0),
            :rotation => MushTools.cRotationInZWPlane(Math::PI/2),
            :scale => 1.0),
        :displacement_velocity => MushDisplacement.new(MushVector.new(1,0,0,0), MushRotation.new, 0.5),
		:num_iterations => 3,
		:to_point => true
      )
	assert_raise(Exception) { MushExtruder.new(:not_a_param => 0) }
  end
end
