#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushGLFont.rb
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
#%Header } knU9JIKA5ODJii/pFOWG0w
# $Id: MushGLFont.rb,v 1.4 2006/08/01 17:21:12 southa Exp $
# $Log: MushGLFont.rb,v $
# Revision 1.4  2006/08/01 17:21:12  southa
# River demo
#
# Revision 1.3  2006/08/01 13:41:06  southa
# Pre-release updates
#

class MushGLFont
# Class: MushGLFont
#
# Description:
#
# This object creates or contains a reference to a renderable font.
#
# Method: new
#
# Creates a new MushGLFont object.  
#
# Parameters:
#
# name - name for this font
# texture_name - name of the texture used by this font
# divide - number of tiles in the font in the [x, y] directions
# extent - size of each tile [x, y] in pixels
# size - size of each character [x, y] or x, with 1.0 filling the screen with one character
#
# Parameters mush be suppliead as a hash.
#
# Returns:
#
# New MushGLFont object
#
# Default:
#
# There is no default constructor.  If only the name is supplied, this object refers
# to a pre-existing font.
#
# Example:
#
# (example)
# MushGLTexture::cDefine(
#	:name          => 'font1-tex',
#   :type          => 'TIFF',
#	:filename      => 'font-mono1.tiff'
# )
# 
# font1 = MushGLFont.new(
#   :name => 'font1',
#   :texture_name => 'font1-tex',
#   :divide => [8,12],
#   :extent => [337.0/8, 768.0/12],
#   :size => 0.05
# )
# (end)
#
# Group: Links
#- Wrapper file:doxygen/class_mush_g_l_ruby_font.html
#- Implemetation file:doxygen/class_mush_g_l_font.html
end
