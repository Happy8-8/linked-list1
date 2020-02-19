class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end


def print_values(list_node)
	if list_node
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else
		print "nil\n"
		return
	end
end


class Stack
	attr_reader :data
	
  def initialize
		@data = nil
	end
	
	def push(value)
		
		# Ignore any fully nil values

		if value == nil
			puts 'There is nothing to push (value is nil)'  
			return
		end

		@data = LinkedListNode.new(value, @data)
	end

	def pop
		return nil if @data.nil?

		value = @data.value
		@data = @data.next_node

		return value
	end
end


def reverse_list(list)
    
  stack = Stack.new
	
	# Push in all values
	
	while list
    stack.push(list.value)
    list = list.next_node
	end
	
	# Return the topmost stack item
	
  return stack.data
end



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)