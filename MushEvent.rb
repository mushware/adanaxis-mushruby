#%Header {
##############################################################################
#
# File adanaxis-mushruby/MushEvent.rb
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
#%Header } XMUI/tj0pSIHAGOxyja4xg
# $Id: MushEvent.rb,v 1.3 2006/10/14 16:59:43 southa Exp $
# $Log: MushEvent.rb,v $
# Revision 1.3  2006/10/14 16:59:43  southa
# Ruby Deco objects
#
# Revision 1.2  2006/08/24 16:30:55  southa
# Event handling
#
# Revision 1.1  2006/08/17 08:57:10  southa
# Event handling
#

require 'MushObject.rb'

class MushEvent < MushObject
  def initialize
  end
  
  attr_accessor :src, :dest
end
