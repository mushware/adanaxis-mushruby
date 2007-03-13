#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/test/tc_MushMeshLibrary.rb
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
#%Header } T7LcZWwzXGYN7feOiOt2kw
# $Id: tc_MushMeshLibrary.rb,v 1.3 2006/08/01 17:21:15 southa Exp $
# $Log: tc_MushMeshLibrary.rb,v $
# Revision 1.3  2006/08/01 17:21:15  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:10  southa
# Pre-release updates
#

require 'test/unit'
require 'MushVector.rb'

class TestMushMeshLibrary < Test::Unit::TestCase
  def test_simple
    mesh1 = MushMesh.new('testmesh')
	MushMeshLibrary.cPolygonPrismCreate(mesh1, MushVector.new(1,1,1,1), 5)
  end
end
