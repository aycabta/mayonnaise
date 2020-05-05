class Mayonnaise
  VERSION = '0.0.1'

  def initialize(height, width, pos)
    @height = height
    @width = width
    @pos = pos
    @input_buf = ''
    @output_buf = ''
  end

  def input(s)
    @input_buf << s
    self
  end

  def blend
    @output_buf = @input_buf
    self
  end

  def output
    @output_buf
  end
end
