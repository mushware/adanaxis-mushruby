#%Header {
##############################################################################
#
# File adanaxis-mushruby/test/tc_MushMaterial.rb
#
# Copyright: Andy Southgate 2002-2007, 2020
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
#
##############################################################################
#%Header } wMPuy6kKnk3x1eE3gxpA2w
# $Id: tc_MushMaterial.rb,v 1.3 2006/08/01 17:21:15 southa Exp $
# $Log: tc_MushMaterial.rb,v $
# Revision 1.3  2006/08/01 17:21:15  southa
# River demo
#
# Revision 1.2  2006/08/01 13:41:09  southa
# Pre-release updates
#

class TestMushMaterial < Test::Unit::TestCase
  def test_simple
    MushMaterial.cDefine(
	    :name => 'testmaterial1',
	    :texture_name => 'testtex1'
		)
		
	assert_raise(Exception) {
	    MushMaterial.cDefine(
	    :name => 'testmaterial1',
	    :texture_name => 'testtex1',
		:not_a_param => 1
		)
	}

	assert_raise(Exception) {
	    MushMaterial.cDefine(
	    :name => 'testmaterial1'
		)
    }
  end
end
