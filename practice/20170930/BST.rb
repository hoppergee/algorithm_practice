class BinarySearchTree
  class Node
    attr_reader :key, :left, :right

    def initialize(key)
      @key = key
      @left = nil
      @right = nil
    end

    def insert(new_key)
      if new_key <= @key
        @left.nil? ? @left = Node.new(new_key) : @left.insert(new_key)
      elsif new_key > @key
        @right.nil? ? @right = Node.new(new_key) : @right.insert(new_key)
      end
    end
  end

  def initialize
    @root = nil
  end

  def insert(key)
    @root.nil? ? root = Node.new(key) : root.insert(key)
  end

  def in_order(node=@root, &block)
    return if node.nil?
    in_order(node.left, &block)
    yield
    in_order(node.right, &block)
  end

  def search(node=@root, key)
    if key < @root.key
      search(@root.left)
    elsif key > @root.key
      search(@root.right)
    else
      return node
    end
  end

  def check_heitht(node)
    return 0 if node.nil?

    leftHeight = check_height(node.left)
    return -1 if leftHeight == -1

    rightHeight = check_height(node.right)
    return -1 if rightHeight == -1

    diff = leftHeight - rightHeight
    if diff.abs > 1
      -1
    else
      [leftHeight, rightHeight].max + 1
    end
  end

  def is_balanced?(node)
    check_height(node) == -1 ? false : true
  end
end
