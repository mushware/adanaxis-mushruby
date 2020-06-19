#%Header {
##############################################################################
#
# File adanaxis-mushruby/test/tc_MushVector.rb
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
#%Header } zoQbsjwBDLNYyNJBnyLOdg
# $Id: tc_MushVector.rb,v 1.3 2006/08/01 17:21:16 southa Exp $
# $Log: tc_MushVector.rb,v $
# Revision 1.3  2006/08/01 17:21:16  southa
# River demo
#
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
