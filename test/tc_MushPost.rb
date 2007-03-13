#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/tc_MushPost.rb
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
#%Header } 0HC7181prFkv/tY2azmnAA
# $Id: tc_MushPost.rb,v 1.3 2006/08/01 17:21:16 southa Exp $
# $Log: tc_MushPost.rb,v $
# Revision 1.3  2006/08/01 17:21:16  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:10  southa
# Pre-release updates
#

class TestMushPost < Test::Unit::TestCase
  def test_simple
    post1 = MushPost.new
	post2 = MushPost.new(
      :position => MushVector.new(1,2,3,4),
	  :angular_position => MushTools.cRotationInXYPlane(Math::PI/2),
	  :velocity => MushVector.new(0,0,0,-0.3),
	  :angular_velocity => MushTools.cRotationInZWPlane(Math::PI/20)
	)
	post3 = MushPost.new(
	  MushVector.new(1,2,3,4),
	  MushVector.new(0,0,0,-0.3),
	  MushTools.cRotationInZWPlane(Math::PI/2),
	  MushTools.cRotationInZWPlane(Math::PI/20)
	  )
	assert_raise(Exception) { MushPost.new(:not_a_param => 0) }

	assert_equal(post2.position, MushVector.new(1,2,3,4))
	assert_equal(post2.velocity, MushVector.new(0,0,0,-0.3))
	assert_equal(post2.angular_position, MushTools.cRotationInXYPlane(Math::PI/2))
	assert_equal(post2.angular_velocity, MushTools.cRotationInZWPlane(Math::PI/20))
	
	post1.position = MushVector.new(5,6,7,8)
	assert_equal(post1.position, MushVector.new(5,6,7,8))
	
	post1.velocity = MushVector.new(15,16,17,18)
	assert_equal(post1.velocity, MushVector.new(15,16,17,18))
	
	post1.angular_position = MushTools.cRotationInXZPlane(Math::PI/4)
	assert_equal(post1.angular_position, MushTools.cRotationInXZPlane(Math::PI/4))
	
	post1.angular_velocity = MushTools.cRotationInYWPlane(Math::PI/8)
	assert_equal(post1.angular_velocity, MushTools.cRotationInYWPlane(Math::PI/8))
	
  end
end
