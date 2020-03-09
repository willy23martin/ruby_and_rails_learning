=begin
OOP principles: Encapsulation:
- Packets data/functions into a single component.
- Hides an object implementation and properties.
- Prevents non-desirable modifications to objects.
=end

#Attribute Accessors of a Ruby class:
# attr_reader: allows environment to only read the object properties:
class Conversation
  attr_reader :queue, :conversation_id
  def initialize(id, queue, content)
    @conversation_id = id
    @queue = queue
    @content = content
  end
end

conversation = Conversation.new("1102", "operation2", "Conversation details")
puts conversation.content # Not defined
puts conversation.queue # operation2
puts conversation.conversation_id # 1102
