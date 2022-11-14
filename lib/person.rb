class Person

  def initialize (attributes = nil)
    if attributes
    attributes.each do |key, value|
      self.send("#{key}=", value)
      self.class.attr_accessor(key)
    end
  end
end
