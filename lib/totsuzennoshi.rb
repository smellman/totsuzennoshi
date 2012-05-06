# -*- coding: utf-8 -*-
class Totsuzennoshi

  HEADER_LR = "＿"
  HEADER_BODY = "人"
  HEADER_SPACE = " "
  BODY_LEFT = "＞ "
  BODY_RIGHT = " ＜"
  FOOTER_LR = "￣"
  FOOTER_BODY = "Y^"
  FOOTER_BODY_FILL = "Y"

  def self.totsuzennoshi(message)
    return "#{make_header(message)}\n#{make_body(message)}\n#{make_footer(message)}\n"
  end

  def self.header_parts(message)
    length = message.size
    modarray = length.divmod(2)
    return [modarray[0] + modarray[1], modarray[0]]
  end

  def self.make_footer(message)
    return "#{FOOTER_LR}#{FOOTER_BODY*message.size}#{FOOTER_BODY_FILL}#{FOOTER_LR}"
  end

  def self.make_header(message)
    parts = header_parts(message)
    return "#{HEADER_LR}#{HEADER_BODY*parts[0]}#{HEADER_SPACE}#{HEADER_BODY*parts[1]}#{HEADER_LR}"
  end

  def self.make_body(message)
    return "#{BODY_LEFT}#{message}#{BODY_RIGHT}"
  end

end
