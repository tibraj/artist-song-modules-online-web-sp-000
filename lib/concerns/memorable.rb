module Memorable
  module ClassMethods
    def reset_all #the self keyword is omitted when defining class methods inside modules.
      self.all.clear
    end
    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self #@@artists << self && @@songs << self
    end
  end
end
