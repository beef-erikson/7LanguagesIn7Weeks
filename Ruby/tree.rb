# Implements and demonstrates a node tree
# Beef Erikson Studios - 2020

# Tree class
# ----
# Instance variables
#   name - node name 
#   children - nodes' children
#
# Block methods
#   visit_all     outputs node name and all children
#   visit         outputs node name only
# ----
class Tree
    # Defines instance variables
    attr_accessor :children, :node_name

    # Initializes instance variable accessor and setter
    def initialize(name, children=[])
        @children = children
        @node_name = name
    end

    # Recurse through each child and passes argument to visit method
    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    # Calls self
    def visit(&block)
        block.call self
    end
end

# Defines node name and children
ruby_tree = Tree.new( "Ruby",
    [Tree.new("Reia"), 
    Tree.new("MacRuby")])

# Outputs node name
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

# Outputs node name and children
puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
puts