#%Header {
##############################################################################
#
# File data-adanaxis/mushruby/MushKeys.rb
#
# Author Andy Southgate 2006-2007
#
# This file contains original work by Andy Southgate.  The author and his
# employer (Mushware Limited) irrevocably waive all of their copyright rights
# vested in this particular version of this file to the furthest extent
# permitted.  The author and Mushware Limited also irrevocably waive any and
# all of their intellectual property rights arising from said file and its
# creation that would otherwise restrict the rights of any party to use and/or
# distribute the use of the techniques and methods used herein.  A written
# waiver can be obtained via http://www.mushware.com/.
#
# This software carries NO WARRANTY of any kind.
#
##############################################################################
#%Header } 6lAn5OV2LkFNYaQyS65cjw
# $Id: MushKeys.rbv 1.5 2006/08/01 17:21:13 southa Exp $
# $Log: MushKeys.rbv $
# Revision 1.5  2006/08/01 17:21:13  southa
# River demo
#
# Revision 1.4  2006/08/01 13:41:07  southa
# Pre-release updates
#

class MushKeys
  
  SDLK_SCANCODE_MASK = 1<<30

  def MushKeys.sdl_scancode_to_keycode(x)
    return x | SDLK_SCANCODE_MASK
  end

  SDL_SCANCODE_UNKNOWN = 0

  SDL_SCANCODE_A = 4
  SDL_SCANCODE_B = 5
  SDL_SCANCODE_C = 6
  SDL_SCANCODE_D = 7
  SDL_SCANCODE_E = 8
  SDL_SCANCODE_F = 9
  SDL_SCANCODE_G = 10
  SDL_SCANCODE_H = 11
  SDL_SCANCODE_I = 12
  SDL_SCANCODE_J = 13
  SDL_SCANCODE_K = 14
  SDL_SCANCODE_L = 15
  SDL_SCANCODE_M = 16
  SDL_SCANCODE_N = 17
  SDL_SCANCODE_O = 18
  SDL_SCANCODE_P = 19
  SDL_SCANCODE_Q = 20
  SDL_SCANCODE_R = 21
  SDL_SCANCODE_S = 22
  SDL_SCANCODE_T = 23
  SDL_SCANCODE_U = 24
  SDL_SCANCODE_V = 25
  SDL_SCANCODE_W = 26
  SDL_SCANCODE_X = 27
  SDL_SCANCODE_Y = 28
  SDL_SCANCODE_Z = 29

  SDL_SCANCODE_1 = 30
  SDL_SCANCODE_2 = 31
  SDL_SCANCODE_3 = 32
  SDL_SCANCODE_4 = 33
  SDL_SCANCODE_5 = 34
  SDL_SCANCODE_6 = 35
  SDL_SCANCODE_7 = 36
  SDL_SCANCODE_8 = 37
  SDL_SCANCODE_9 = 38
  SDL_SCANCODE_0 = 39

  SDL_SCANCODE_RETURN = 40
  SDL_SCANCODE_ESCAPE = 41
  SDL_SCANCODE_BACKSPACE = 42
  SDL_SCANCODE_TAB = 43
  SDL_SCANCODE_SPACE = 44

  SDL_SCANCODE_MINUS = 45
  SDL_SCANCODE_EQUALS = 46
  SDL_SCANCODE_LEFTBRACKET = 47
  SDL_SCANCODE_RIGHTBRACKET = 48
  SDL_SCANCODE_BACKSLASH = 49 
  SDL_SCANCODE_NONUSHASH = 50 
  SDL_SCANCODE_SEMICOLON = 51
  SDL_SCANCODE_APOSTROPHE = 52
  SDL_SCANCODE_GRAVE = 53 
  SDL_SCANCODE_COMMA = 54
  SDL_SCANCODE_PERIOD = 55
  SDL_SCANCODE_SLASH = 56

  SDL_SCANCODE_CAPSLOCK = 57

  SDL_SCANCODE_F1 = 58
  SDL_SCANCODE_F2 = 59
  SDL_SCANCODE_F3 = 60
  SDL_SCANCODE_F4 = 61
  SDL_SCANCODE_F5 = 62
  SDL_SCANCODE_F6 = 63
  SDL_SCANCODE_F7 = 64
  SDL_SCANCODE_F8 = 65
  SDL_SCANCODE_F9 = 66
  SDL_SCANCODE_F10 = 67
  SDL_SCANCODE_F11 = 68
  SDL_SCANCODE_F12 = 69

  SDL_SCANCODE_PRINTSCREEN = 70
  SDL_SCANCODE_SCROLLLOCK = 71
  SDL_SCANCODE_PAUSE = 72
  SDL_SCANCODE_INSERT = 73
  SDL_SCANCODE_HOME = 74
  SDL_SCANCODE_PAGEUP = 75
  SDL_SCANCODE_DELETE = 76
  SDL_SCANCODE_END = 77
  SDL_SCANCODE_PAGEDOWN = 78
  SDL_SCANCODE_RIGHT = 79
  SDL_SCANCODE_LEFT = 80
  SDL_SCANCODE_DOWN = 81
  SDL_SCANCODE_UP = 82

  SDL_SCANCODE_NUMLOCKCLEAR = 83
  SDL_SCANCODE_KP_DIVIDE = 84
  SDL_SCANCODE_KP_MULTIPLY = 85
  SDL_SCANCODE_KP_MINUS = 86
  SDL_SCANCODE_KP_PLUS = 87
  SDL_SCANCODE_KP_ENTER = 88
  SDL_SCANCODE_KP_1 = 89
  SDL_SCANCODE_KP_2 = 90
  SDL_SCANCODE_KP_3 = 91
  SDL_SCANCODE_KP_4 = 92
  SDL_SCANCODE_KP_5 = 93
  SDL_SCANCODE_KP_6 = 94
  SDL_SCANCODE_KP_7 = 95
  SDL_SCANCODE_KP_8 = 96
  SDL_SCANCODE_KP_9 = 97
  SDL_SCANCODE_KP_0 = 98
  SDL_SCANCODE_KP_PERIOD = 99

  SDL_SCANCODE_NONUSBACKSLASH = 100 
  SDL_SCANCODE_APPLICATION = 101
  SDL_SCANCODE_POWER = 102
  SDL_SCANCODE_KP_EQUALS = 103
  SDL_SCANCODE_F13 = 104
  SDL_SCANCODE_F14 = 105
  SDL_SCANCODE_F15 = 106
  SDL_SCANCODE_F16 = 107
  SDL_SCANCODE_F17 = 108
  SDL_SCANCODE_F18 = 109
  SDL_SCANCODE_F19 = 110
  SDL_SCANCODE_F20 = 111
  SDL_SCANCODE_F21 = 112
  SDL_SCANCODE_F22 = 113
  SDL_SCANCODE_F23 = 114
  SDL_SCANCODE_F24 = 115
  SDL_SCANCODE_EXECUTE = 116
  SDL_SCANCODE_HELP = 117
  SDL_SCANCODE_MENU = 118
  SDL_SCANCODE_SELECT = 119
  SDL_SCANCODE_STOP = 120
  SDL_SCANCODE_AGAIN = 121
  SDL_SCANCODE_UNDO = 122
  SDL_SCANCODE_CUT = 123
  SDL_SCANCODE_COPY = 124
  SDL_SCANCODE_PASTE = 125
  SDL_SCANCODE_FIND = 126
  SDL_SCANCODE_MUTE = 127
  SDL_SCANCODE_VOLUMEUP = 128
  SDL_SCANCODE_VOLUMEDOWN = 129

  SDL_SCANCODE_LOCKINGCAPSLOCK = 130 
  SDL_SCANCODE_LOCKINGNUMLOCK = 131
  SDL_SCANCODE_LOCKINGSCROLLLOCK = 132
  SDL_SCANCODE_KP_COMMA = 133
  SDL_SCANCODE_KP_EQUALSAS400 = 134

  SDL_SCANCODE_INTERNATIONAL1 = 135
  SDL_SCANCODE_INTERNATIONAL2 = 136
  SDL_SCANCODE_INTERNATIONAL3 = 137
  SDL_SCANCODE_INTERNATIONAL4 = 138
  SDL_SCANCODE_INTERNATIONAL5 = 139
  SDL_SCANCODE_INTERNATIONAL6 = 140
  SDL_SCANCODE_INTERNATIONAL7 = 141
  SDL_SCANCODE_INTERNATIONAL8 = 142
  SDL_SCANCODE_INTERNATIONAL9 = 143
  SDL_SCANCODE_LANG1 = 144 
  SDL_SCANCODE_LANG2 = 145
  SDL_SCANCODE_LANG3 = 146
  SDL_SCANCODE_LANG4 = 147
  SDL_SCANCODE_LANG5 = 148
  SDL_SCANCODE_LANG6 = 149 
  SDL_SCANCODE_LANG7 = 150 
  SDL_SCANCODE_LANG8 = 151
  SDL_SCANCODE_LANG9 = 152 

  SDL_SCANCODE_ALTERASE = 153
  SDL_SCANCODE_SYSREQ = 154
  SDL_SCANCODE_CANCEL = 155
  SDL_SCANCODE_CLEAR = 156
  SDL_SCANCODE_PRIOR = 157
  SDL_SCANCODE_RETURN2 = 158
  SDL_SCANCODE_SEPARATOR = 159
  SDL_SCANCODE_OUT = 160
  SDL_SCANCODE_OPER = 161
  SDL_SCANCODE_CLEARAGAIN = 162
  SDL_SCANCODE_CRSEL = 163
  SDL_SCANCODE_EXSEL = 164

  SDL_SCANCODE_KP_00 = 176
  SDL_SCANCODE_KP_000 = 177
  SDL_SCANCODE_THOUSANDSSEPARATOR = 178
  SDL_SCANCODE_DECIMALSEPARATOR = 179
  SDL_SCANCODE_CURRENCYUNIT = 180
  SDL_SCANCODE_CURRENCYSUBUNIT = 181
  SDL_SCANCODE_KP_LEFTPAREN = 182
  SDL_SCANCODE_KP_RIGHTPAREN = 183
  SDL_SCANCODE_KP_LEFTBRACE = 184
  SDL_SCANCODE_KP_RIGHTBRACE = 185
  SDL_SCANCODE_KP_TAB = 186
  SDL_SCANCODE_KP_BACKSPACE = 187
  SDL_SCANCODE_KP_A = 188
  SDL_SCANCODE_KP_B = 189
  SDL_SCANCODE_KP_C = 190
  SDL_SCANCODE_KP_D = 191
  SDL_SCANCODE_KP_E = 192
  SDL_SCANCODE_KP_F = 193
  SDL_SCANCODE_KP_XOR = 194
  SDL_SCANCODE_KP_POWER = 195
  SDL_SCANCODE_KP_PERCENT = 196
  SDL_SCANCODE_KP_LESS = 197
  SDL_SCANCODE_KP_GREATER = 198
  SDL_SCANCODE_KP_AMPERSAND = 199
  SDL_SCANCODE_KP_DBLAMPERSAND = 200
  SDL_SCANCODE_KP_VERTICALBAR = 201
  SDL_SCANCODE_KP_DBLVERTICALBAR = 202
  SDL_SCANCODE_KP_COLON = 203
  SDL_SCANCODE_KP_HASH = 204
  SDL_SCANCODE_KP_SPACE = 205
  SDL_SCANCODE_KP_AT = 206
  SDL_SCANCODE_KP_EXCLAM = 207
  SDL_SCANCODE_KP_MEMSTORE = 208
  SDL_SCANCODE_KP_MEMRECALL = 209
  SDL_SCANCODE_KP_MEMCLEAR = 210
  SDL_SCANCODE_KP_MEMADD = 211
  SDL_SCANCODE_KP_MEMSUBTRACT = 212
  SDL_SCANCODE_KP_MEMMULTIPLY = 213
  SDL_SCANCODE_KP_MEMDIVIDE = 214
  SDL_SCANCODE_KP_PLUSMINUS = 215
  SDL_SCANCODE_KP_CLEAR = 216
  SDL_SCANCODE_KP_CLEARENTRY = 217
  SDL_SCANCODE_KP_BINARY = 218
  SDL_SCANCODE_KP_OCTAL = 219
  SDL_SCANCODE_KP_DECIMAL = 220
  SDL_SCANCODE_KP_HEXADECIMAL = 221

  SDL_SCANCODE_LCTRL = 224
  SDL_SCANCODE_LSHIFT = 225
  SDL_SCANCODE_LALT = 226 
  SDL_SCANCODE_LGUI = 227
  SDL_SCANCODE_RCTRL = 228
  SDL_SCANCODE_RSHIFT = 229
  SDL_SCANCODE_RALT = 230 
  SDL_SCANCODE_RGUI = 231 

  SDL_SCANCODE_MODE = 257  

  SDL_SCANCODE_AUDIONEXT = 258
  SDL_SCANCODE_AUDIOPREV = 259
  SDL_SCANCODE_AUDIOSTOP = 260
  SDL_SCANCODE_AUDIOPLAY = 261
  SDL_SCANCODE_AUDIOMUTE = 262
  SDL_SCANCODE_MEDIASELECT = 263
  SDL_SCANCODE_WWW = 264
  SDL_SCANCODE_MAIL = 265
  SDL_SCANCODE_CALCULATOR = 266
  SDL_SCANCODE_COMPUTER = 267
  SDL_SCANCODE_AC_SEARCH = 268
  SDL_SCANCODE_AC_HOME = 269
  SDL_SCANCODE_AC_BACK = 270
  SDL_SCANCODE_AC_FORWARD = 271
  SDL_SCANCODE_AC_STOP = 272
  SDL_SCANCODE_AC_REFRESH = 273
  SDL_SCANCODE_AC_BOOKMARKS = 274

  SDL_SCANCODE_BRIGHTNESSDOWN = 275
  SDL_SCANCODE_BRIGHTNESSUP = 276
  SDL_SCANCODE_DISPLAYSWITCH = 277 
  SDL_SCANCODE_KBDILLUMTOGGLE = 278
  SDL_SCANCODE_KBDILLUMDOWN = 279
  SDL_SCANCODE_KBDILLUMUP = 280
  SDL_SCANCODE_EJECT = 281
  SDL_SCANCODE_SLEEP = 282

  SDL_SCANCODE_APP1 = 283
  SDL_SCANCODE_APP2 = 284

  SDL_SCANCODE_AUDIOREWIND = 285
  SDL_SCANCODE_AUDIOFASTFORWARD = 286

  

  SDL_NUM_SCANCODES = 512

  SDLK_UNKNOWN = 0

  SDLK_RETURN = '\r'
  SDLK_ESCAPE = '\033'
  SDLK_BACKSPACE = '\b'
  SDLK_TAB = '\t'
  SDLK_SPACE = ' '
  SDLK_EXCLAIM = '!'
  SDLK_QUOTEDBL = '"'
  SDLK_HASH = '#'
  SDLK_PERCENT = '%'
  SDLK_DOLLAR = '$'
  SDLK_AMPERSAND = '&'
  SDLK_QUOTE = '\''
  SDLK_LEFTPAREN = '('
  SDLK_RIGHTPAREN = ')'
  SDLK_ASTERISK = '*'
  SDLK_PLUS = '+'
  SDLK_COMMA = ''
  SDLK_MINUS = '-'
  SDLK_PERIOD = '.'
  SDLK_SLASH = '/'
  SDLK_0 = '0'
  SDLK_1 = '1'
  SDLK_2 = '2'
  SDLK_3 = '3'
  SDLK_4 = '4'
  SDLK_5 = '5'
  SDLK_6 = '6'
  SDLK_7 = '7'
  SDLK_8 = '8'
  SDLK_9 = '9'
  SDLK_COLON = ':'
  SDLK_SEMICOLON = ';'
  SDLK_LESS = '<'
  SDLK_EQUALS = '='
  SDLK_GREATER = '>'
  SDLK_QUESTION = '?'
  SDLK_AT = '@'
 
  SDLK_LEFTBRACKET = '['
  SDLK_BACKSLASH = '\\'
  SDLK_RIGHTBRACKET = ']'
  SDLK_CARET = '^'
  SDLK_UNDERSCORE = '_'
  SDLK_BACKQUOTE = '`'
  SDLK_a = 'a'
  SDLK_b = 'b'
  SDLK_c = 'c'
  SDLK_d = 'd'
  SDLK_e = 'e'
  SDLK_f = 'f'
  SDLK_g = 'g'
  SDLK_h = 'h'
  SDLK_i = 'i'
  SDLK_j = 'j'
  SDLK_k = 'k'
  SDLK_l = 'l'
  SDLK_m = 'm'
  SDLK_n = 'n'
  SDLK_o = 'o'
  SDLK_p = 'p'
  SDLK_q = 'q'
  SDLK_r = 'r'
  SDLK_s = 's'
  SDLK_t = 't'
  SDLK_u = 'u'
  SDLK_v = 'v'
  SDLK_w = 'w'
  SDLK_x = 'x'
  SDLK_y = 'y'
  SDLK_z = 'z'

  SDLK_CAPSLOCK = sdl_scancode_to_keycode(SDL_SCANCODE_CAPSLOCK)

  SDLK_F1 = sdl_scancode_to_keycode(SDL_SCANCODE_F1)
  SDLK_F2 = sdl_scancode_to_keycode(SDL_SCANCODE_F2)
  SDLK_F3 = sdl_scancode_to_keycode(SDL_SCANCODE_F3)
  SDLK_F4 = sdl_scancode_to_keycode(SDL_SCANCODE_F4)
  SDLK_F5 = sdl_scancode_to_keycode(SDL_SCANCODE_F5)
  SDLK_F6 = sdl_scancode_to_keycode(SDL_SCANCODE_F6)
  SDLK_F7 = sdl_scancode_to_keycode(SDL_SCANCODE_F7)
  SDLK_F8 = sdl_scancode_to_keycode(SDL_SCANCODE_F8)
  SDLK_F9 = sdl_scancode_to_keycode(SDL_SCANCODE_F9)
  SDLK_F10 = sdl_scancode_to_keycode(SDL_SCANCODE_F10)
  SDLK_F11 = sdl_scancode_to_keycode(SDL_SCANCODE_F11)
  SDLK_F12 = sdl_scancode_to_keycode(SDL_SCANCODE_F12)

  SDLK_PRINTSCREEN = sdl_scancode_to_keycode(SDL_SCANCODE_PRINTSCREEN)
  SDLK_SCROLLLOCK = sdl_scancode_to_keycode(SDL_SCANCODE_SCROLLLOCK)
  SDLK_PAUSE = sdl_scancode_to_keycode(SDL_SCANCODE_PAUSE)
  SDLK_INSERT = sdl_scancode_to_keycode(SDL_SCANCODE_INSERT)
  SDLK_HOME = sdl_scancode_to_keycode(SDL_SCANCODE_HOME)
  SDLK_PAGEUP = sdl_scancode_to_keycode(SDL_SCANCODE_PAGEUP)
  SDLK_DELETE = '\177'
  SDLK_END = sdl_scancode_to_keycode(SDL_SCANCODE_END)
  SDLK_PAGEDOWN = sdl_scancode_to_keycode(SDL_SCANCODE_PAGEDOWN)
  SDLK_RIGHT = sdl_scancode_to_keycode(SDL_SCANCODE_RIGHT)
  SDLK_LEFT = sdl_scancode_to_keycode(SDL_SCANCODE_LEFT)
  SDLK_DOWN = sdl_scancode_to_keycode(SDL_SCANCODE_DOWN)
  SDLK_UP = sdl_scancode_to_keycode(SDL_SCANCODE_UP)

  SDLK_NUMLOCKCLEAR = sdl_scancode_to_keycode(SDL_SCANCODE_NUMLOCKCLEAR)
  SDLK_KP_DIVIDE = sdl_scancode_to_keycode(SDL_SCANCODE_KP_DIVIDE)
  SDLK_KP_MULTIPLY = sdl_scancode_to_keycode(SDL_SCANCODE_KP_MULTIPLY)
  SDLK_KP_MINUS = sdl_scancode_to_keycode(SDL_SCANCODE_KP_MINUS)
  SDLK_KP_PLUS = sdl_scancode_to_keycode(SDL_SCANCODE_KP_PLUS)
  SDLK_KP_ENTER = sdl_scancode_to_keycode(SDL_SCANCODE_KP_ENTER)
  SDLK_KP_1 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_1)
  SDLK_KP_2 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_2)
  SDLK_KP_3 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_3)
  SDLK_KP_4 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_4)
  SDLK_KP_5 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_5)
  SDLK_KP_6 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_6)
  SDLK_KP_7 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_7)
  SDLK_KP_8 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_8)
  SDLK_KP_9 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_9)
  SDLK_KP_0 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_0)
  SDLK_KP_PERIOD = sdl_scancode_to_keycode(SDL_SCANCODE_KP_PERIOD)

  SDLK_APPLICATION = sdl_scancode_to_keycode(SDL_SCANCODE_APPLICATION)
  SDLK_POWER = sdl_scancode_to_keycode(SDL_SCANCODE_POWER)
  SDLK_KP_EQUALS = sdl_scancode_to_keycode(SDL_SCANCODE_KP_EQUALS)
  SDLK_F13 = sdl_scancode_to_keycode(SDL_SCANCODE_F13)
  SDLK_F14 = sdl_scancode_to_keycode(SDL_SCANCODE_F14)
  SDLK_F15 = sdl_scancode_to_keycode(SDL_SCANCODE_F15)
  SDLK_F16 = sdl_scancode_to_keycode(SDL_SCANCODE_F16)
  SDLK_F17 = sdl_scancode_to_keycode(SDL_SCANCODE_F17)
  SDLK_F18 = sdl_scancode_to_keycode(SDL_SCANCODE_F18)
  SDLK_F19 = sdl_scancode_to_keycode(SDL_SCANCODE_F19)
  SDLK_F20 = sdl_scancode_to_keycode(SDL_SCANCODE_F20)
  SDLK_F21 = sdl_scancode_to_keycode(SDL_SCANCODE_F21)
  SDLK_F22 = sdl_scancode_to_keycode(SDL_SCANCODE_F22)
  SDLK_F23 = sdl_scancode_to_keycode(SDL_SCANCODE_F23)
  SDLK_F24 = sdl_scancode_to_keycode(SDL_SCANCODE_F24)
  SDLK_EXECUTE = sdl_scancode_to_keycode(SDL_SCANCODE_EXECUTE)
  SDLK_HELP = sdl_scancode_to_keycode(SDL_SCANCODE_HELP)
  SDLK_MENU = sdl_scancode_to_keycode(SDL_SCANCODE_MENU)
  SDLK_SELECT = sdl_scancode_to_keycode(SDL_SCANCODE_SELECT)
  SDLK_STOP = sdl_scancode_to_keycode(SDL_SCANCODE_STOP)
  SDLK_AGAIN = sdl_scancode_to_keycode(SDL_SCANCODE_AGAIN)
  SDLK_UNDO = sdl_scancode_to_keycode(SDL_SCANCODE_UNDO)
  SDLK_CUT = sdl_scancode_to_keycode(SDL_SCANCODE_CUT)
  SDLK_COPY = sdl_scancode_to_keycode(SDL_SCANCODE_COPY)
  SDLK_PASTE = sdl_scancode_to_keycode(SDL_SCANCODE_PASTE)
  SDLK_FIND = sdl_scancode_to_keycode(SDL_SCANCODE_FIND)
  SDLK_MUTE = sdl_scancode_to_keycode(SDL_SCANCODE_MUTE)
  SDLK_VOLUMEUP = sdl_scancode_to_keycode(SDL_SCANCODE_VOLUMEUP)
  SDLK_VOLUMEDOWN = sdl_scancode_to_keycode(SDL_SCANCODE_VOLUMEDOWN)
  SDLK_KP_COMMA = sdl_scancode_to_keycode(SDL_SCANCODE_KP_COMMA)
  SDLK_KP_EQUALSAS400 =
      sdl_scancode_to_keycode(SDL_SCANCODE_KP_EQUALSAS400)

  SDLK_ALTERASE = sdl_scancode_to_keycode(SDL_SCANCODE_ALTERASE)
  SDLK_SYSREQ = sdl_scancode_to_keycode(SDL_SCANCODE_SYSREQ)
  SDLK_CANCEL = sdl_scancode_to_keycode(SDL_SCANCODE_CANCEL)
  SDLK_CLEAR = sdl_scancode_to_keycode(SDL_SCANCODE_CLEAR)
  SDLK_PRIOR = sdl_scancode_to_keycode(SDL_SCANCODE_PRIOR)
  SDLK_RETURN2 = sdl_scancode_to_keycode(SDL_SCANCODE_RETURN2)
  SDLK_SEPARATOR = sdl_scancode_to_keycode(SDL_SCANCODE_SEPARATOR)
  SDLK_OUT = sdl_scancode_to_keycode(SDL_SCANCODE_OUT)
  SDLK_OPER = sdl_scancode_to_keycode(SDL_SCANCODE_OPER)
  SDLK_CLEARAGAIN = sdl_scancode_to_keycode(SDL_SCANCODE_CLEARAGAIN)
  SDLK_CRSEL = sdl_scancode_to_keycode(SDL_SCANCODE_CRSEL)
  SDLK_EXSEL = sdl_scancode_to_keycode(SDL_SCANCODE_EXSEL)

  SDLK_KP_00 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_00)
  SDLK_KP_000 = sdl_scancode_to_keycode(SDL_SCANCODE_KP_000)
  SDLK_THOUSANDSSEPARATOR =
      sdl_scancode_to_keycode(SDL_SCANCODE_THOUSANDSSEPARATOR)
  SDLK_DECIMALSEPARATOR =
      sdl_scancode_to_keycode(SDL_SCANCODE_DECIMALSEPARATOR)
  SDLK_CURRENCYUNIT = sdl_scancode_to_keycode(SDL_SCANCODE_CURRENCYUNIT)
  SDLK_CURRENCYSUBUNIT =
      sdl_scancode_to_keycode(SDL_SCANCODE_CURRENCYSUBUNIT)
  SDLK_KP_LEFTPAREN = sdl_scancode_to_keycode(SDL_SCANCODE_KP_LEFTPAREN)
  SDLK_KP_RIGHTPAREN = sdl_scancode_to_keycode(SDL_SCANCODE_KP_RIGHTPAREN)
  SDLK_KP_LEFTBRACE = sdl_scancode_to_keycode(SDL_SCANCODE_KP_LEFTBRACE)
  SDLK_KP_RIGHTBRACE = sdl_scancode_to_keycode(SDL_SCANCODE_KP_RIGHTBRACE)
  SDLK_KP_TAB = sdl_scancode_to_keycode(SDL_SCANCODE_KP_TAB)
  SDLK_KP_BACKSPACE = sdl_scancode_to_keycode(SDL_SCANCODE_KP_BACKSPACE)
  SDLK_KP_A = sdl_scancode_to_keycode(SDL_SCANCODE_KP_A)
  SDLK_KP_B = sdl_scancode_to_keycode(SDL_SCANCODE_KP_B)
  SDLK_KP_C = sdl_scancode_to_keycode(SDL_SCANCODE_KP_C)
  SDLK_KP_D = sdl_scancode_to_keycode(SDL_SCANCODE_KP_D)
  SDLK_KP_E = sdl_scancode_to_keycode(SDL_SCANCODE_KP_E)
  SDLK_KP_F = sdl_scancode_to_keycode(SDL_SCANCODE_KP_F)
  SDLK_KP_XOR = sdl_scancode_to_keycode(SDL_SCANCODE_KP_XOR)
  SDLK_KP_POWER = sdl_scancode_to_keycode(SDL_SCANCODE_KP_POWER)
  SDLK_KP_PERCENT = sdl_scancode_to_keycode(SDL_SCANCODE_KP_PERCENT)
  SDLK_KP_LESS = sdl_scancode_to_keycode(SDL_SCANCODE_KP_LESS)
  SDLK_KP_GREATER = sdl_scancode_to_keycode(SDL_SCANCODE_KP_GREATER)
  SDLK_KP_AMPERSAND = sdl_scancode_to_keycode(SDL_SCANCODE_KP_AMPERSAND)
  SDLK_KP_DBLAMPERSAND =
      sdl_scancode_to_keycode(SDL_SCANCODE_KP_DBLAMPERSAND)
  SDLK_KP_VERTICALBAR =
      sdl_scancode_to_keycode(SDL_SCANCODE_KP_VERTICALBAR)
  SDLK_KP_DBLVERTICALBAR =
      sdl_scancode_to_keycode(SDL_SCANCODE_KP_DBLVERTICALBAR)
  SDLK_KP_COLON = sdl_scancode_to_keycode(SDL_SCANCODE_KP_COLON)
  SDLK_KP_HASH = sdl_scancode_to_keycode(SDL_SCANCODE_KP_HASH)
  SDLK_KP_SPACE = sdl_scancode_to_keycode(SDL_SCANCODE_KP_SPACE)
  SDLK_KP_AT = sdl_scancode_to_keycode(SDL_SCANCODE_KP_AT)
  SDLK_KP_EXCLAM = sdl_scancode_to_keycode(SDL_SCANCODE_KP_EXCLAM)
  SDLK_KP_MEMSTORE = sdl_scancode_to_keycode(SDL_SCANCODE_KP_MEMSTORE)
  SDLK_KP_MEMRECALL = sdl_scancode_to_keycode(SDL_SCANCODE_KP_MEMRECALL)
  SDLK_KP_MEMCLEAR = sdl_scancode_to_keycode(SDL_SCANCODE_KP_MEMCLEAR)
  SDLK_KP_MEMADD = sdl_scancode_to_keycode(SDL_SCANCODE_KP_MEMADD)
  SDLK_KP_MEMSUBTRACT =
      sdl_scancode_to_keycode(SDL_SCANCODE_KP_MEMSUBTRACT)
  SDLK_KP_MEMMULTIPLY =
      sdl_scancode_to_keycode(SDL_SCANCODE_KP_MEMMULTIPLY)
  SDLK_KP_MEMDIVIDE = sdl_scancode_to_keycode(SDL_SCANCODE_KP_MEMDIVIDE)
  SDLK_KP_PLUSMINUS = sdl_scancode_to_keycode(SDL_SCANCODE_KP_PLUSMINUS)
  SDLK_KP_CLEAR = sdl_scancode_to_keycode(SDL_SCANCODE_KP_CLEAR)
  SDLK_KP_CLEARENTRY = sdl_scancode_to_keycode(SDL_SCANCODE_KP_CLEARENTRY)
  SDLK_KP_BINARY = sdl_scancode_to_keycode(SDL_SCANCODE_KP_BINARY)
  SDLK_KP_OCTAL = sdl_scancode_to_keycode(SDL_SCANCODE_KP_OCTAL)
  SDLK_KP_DECIMAL = sdl_scancode_to_keycode(SDL_SCANCODE_KP_DECIMAL)
  SDLK_KP_HEXADECIMAL =
      sdl_scancode_to_keycode(SDL_SCANCODE_KP_HEXADECIMAL)

  SDLK_LCTRL = sdl_scancode_to_keycode(SDL_SCANCODE_LCTRL)
  SDLK_LSHIFT = sdl_scancode_to_keycode(SDL_SCANCODE_LSHIFT)
  SDLK_LALT = sdl_scancode_to_keycode(SDL_SCANCODE_LALT)
  SDLK_LGUI = sdl_scancode_to_keycode(SDL_SCANCODE_LGUI)
  SDLK_RCTRL = sdl_scancode_to_keycode(SDL_SCANCODE_RCTRL)
  SDLK_RSHIFT = sdl_scancode_to_keycode(SDL_SCANCODE_RSHIFT)
  SDLK_RALT = sdl_scancode_to_keycode(SDL_SCANCODE_RALT)
  SDLK_RGUI = sdl_scancode_to_keycode(SDL_SCANCODE_RGUI)

  SDLK_MODE = sdl_scancode_to_keycode(SDL_SCANCODE_MODE)

  SDLK_AUDIONEXT = sdl_scancode_to_keycode(SDL_SCANCODE_AUDIONEXT)
  SDLK_AUDIOPREV = sdl_scancode_to_keycode(SDL_SCANCODE_AUDIOPREV)
  SDLK_AUDIOSTOP = sdl_scancode_to_keycode(SDL_SCANCODE_AUDIOSTOP)
  SDLK_AUDIOPLAY = sdl_scancode_to_keycode(SDL_SCANCODE_AUDIOPLAY)
  SDLK_AUDIOMUTE = sdl_scancode_to_keycode(SDL_SCANCODE_AUDIOMUTE)
  SDLK_MEDIASELECT = sdl_scancode_to_keycode(SDL_SCANCODE_MEDIASELECT)
  SDLK_WWW = sdl_scancode_to_keycode(SDL_SCANCODE_WWW)
  SDLK_MAIL = sdl_scancode_to_keycode(SDL_SCANCODE_MAIL)
  SDLK_CALCULATOR = sdl_scancode_to_keycode(SDL_SCANCODE_CALCULATOR)
  SDLK_COMPUTER = sdl_scancode_to_keycode(SDL_SCANCODE_COMPUTER)
  SDLK_AC_SEARCH = sdl_scancode_to_keycode(SDL_SCANCODE_AC_SEARCH)
  SDLK_AC_HOME = sdl_scancode_to_keycode(SDL_SCANCODE_AC_HOME)
  SDLK_AC_BACK = sdl_scancode_to_keycode(SDL_SCANCODE_AC_BACK)
  SDLK_AC_FORWARD = sdl_scancode_to_keycode(SDL_SCANCODE_AC_FORWARD)
  SDLK_AC_STOP = sdl_scancode_to_keycode(SDL_SCANCODE_AC_STOP)
  SDLK_AC_REFRESH = sdl_scancode_to_keycode(SDL_SCANCODE_AC_REFRESH)
  SDLK_AC_BOOKMARKS = sdl_scancode_to_keycode(SDL_SCANCODE_AC_BOOKMARKS)

  SDLK_BRIGHTNESSDOWN =
      sdl_scancode_to_keycode(SDL_SCANCODE_BRIGHTNESSDOWN)
  SDLK_BRIGHTNESSUP = sdl_scancode_to_keycode(SDL_SCANCODE_BRIGHTNESSUP)
  SDLK_DISPLAYSWITCH = sdl_scancode_to_keycode(SDL_SCANCODE_DISPLAYSWITCH)
  SDLK_KBDILLUMTOGGLE =
      sdl_scancode_to_keycode(SDL_SCANCODE_KBDILLUMTOGGLE)
  SDLK_KBDILLUMDOWN = sdl_scancode_to_keycode(SDL_SCANCODE_KBDILLUMDOWN)
  SDLK_KBDILLUMUP = sdl_scancode_to_keycode(SDL_SCANCODE_KBDILLUMUP)
  SDLK_EJECT = sdl_scancode_to_keycode(SDL_SCANCODE_EJECT)
  SDLK_SLEEP = sdl_scancode_to_keycode(SDL_SCANCODE_SLEEP)
  SDLK_APP1 = sdl_scancode_to_keycode(SDL_SCANCODE_APP1)
  SDLK_APP2 = sdl_scancode_to_keycode(SDL_SCANCODE_APP2)

  SDLK_AUDIOREWIND = sdl_scancode_to_keycode(SDL_SCANCODE_AUDIOREWIND)
  SDLK_AUDIOFASTFORWARD = sdl_scancode_to_keycode(SDL_SCANCODE_AUDIOFASTFORWARD)
  
  KMOD_NONE = 0x0000
  KMOD_LSHIFT = 0x0001
  KMOD_RSHIFT = 0x0002
  KMOD_LCTRL = 0x0040
  KMOD_RCTRL = 0x0080
  KMOD_LALT = 0x0100
  KMOD_RALT = 0x0200
  KMOD_LGUI = 0x0400
  KMOD_RGUI = 0x0800
  KMOD_NUM = 0x1000
  KMOD_CAPS = 0x2000
  KMOD_MODE = 0x4000
  KMOD_RESERVED = 0x8000

  # Mouse buttons
  KEY_MOUSE0 = 1000
  KEY_MOUSE1 = 1001
  KEY_MOUSE2 = 1002
  KEY_MOUSE3 = 1003
  KEY_MOUSE4 = 1004
    
  # Joystick spacing and offsets
  KEYSTICK_SPACING   = 100
  KEYSTICK_HAT       = 50
  KEYSTICK_HAT_LEFT  = 0
  KEYSTICK_HAT_RIGHT = 1
  KEYSTICK_HAT_UP    = 2
  KEYSTICK_HAT_DOWN  = 3
        
  KEYSTICK_0   = 1200
  KEYSTICK_0_0 = 1200
  KEYSTICK_0_1 = 1201
  KEYSTICK_0_2 = 1202
  KEYSTICK_0_3 = 1203
        
  KEYSTICK_1   = 1300
  KEYSTICK_1_0 = 1300
  KEYSTICK_1_1 = 1301
  KEYSTICK_1_2 = 1302
  KEYSTICK_1_3 = 1303

  KEYSTICK_5   = 1700
        
end
