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
puts conversation.queue # operation2
puts conversation.conversation_id # 1102
# puts conversation.content # Not defined

#attr_writer: allows environment to only write the object properties:
class Properties
  attr_writer :words
  def initialize(words)
    @words = words
  end
end
properties = Properties.new("The class properties to be persisted")
puts properties.words = "New words" # Can write
# puts properties.words # Cannot read

#attr_accesor: allows environment both to write and to read the object properties:
class CustomFile
  attr_accessor :name, :content
  def initialize(name, content)
    @name = name
    @content = content
  end
end
custom_file = CustomFile.new("fileOne", "This is the file one")
puts custom_file.name
puts custom_file.content
puts custom_file.name = "fileOtherOne"
puts custom_file.content = "Modifying the file"

