class Stack
  class Node
    attr_accessor :next, :data

    def initialize(data)
      @data = data
    end
  end

  def pop
    unless @top.nil
      old_top = @top
      @top = @top.next
      old_top.data
    end
  end

  def push(obj)
    if @top.nil?
      @top = Node.new(obj)
    else
      old_top = @top
      @top = Node.new(obj)
      @top.next = old_top
    end
  end
end
