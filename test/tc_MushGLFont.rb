#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/tc_MushGLFont.rb
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
#%Header } wSr+MGIUMHmc6KsP4QPfOw
# $Id: tc_MushGLFont.rb,v 1.3 2006/08/01 17:21:15 southa Exp $
# $Log: tc_MushGLFont.rb,v $
# Revision 1.3  2006/08/01 17:21:15  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:09  southa
# Pre-release updates
#

class TestMushGLFont < Test::Unit::TestCase
  def test_simple
	font1 = MushGLFont.new(
      :name => 'font1',
      :texture_name => 'font1-tex',
      :divide => [8,12],
      :extent => [337/8.0, 768/12.0],
      :size => 0.05
    )
    
	font2 = MushGLFont.new(
      :name => 'font2',
      :texture_name => 'font2-tex',
      :divide => [8,12],
      :extent => [337/8.0, 768/12.0],
      :size => [0.04, 0.05]
    )
    
	assert_raise(Exception) { MushGLFont.new }
	assert_raise(Exception) { MushGLFont.new(5) }
	assert_raise(Exception) { MushGLFont.new(:not_a_param => 0) }
  end
end
