#%Header {
##############################################################################
#
# File: data-adanaxis/mushruby/test/tc_MushMesh.rb
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
#%Header } ja5/cIOMLXWl+vFIBTNLvg
# $Id$
# $Log$

require 'test/unit'

class TestMushMesh < Test::Unit::TestCase
  def test_simple
    mesh1 = MushMesh.new('testmesh')
	extruder1 = MushExtruder.new
    mesh1.mExtruderAdd(extruder1)
	mesh1.mMaterialAdd('material1')
  end
end
