require 'loser/module'

module Loser

  def self.included(klass)
    attr_accessor_with_default_setter :errors do
      Array.new
    end
  end

  def valid?
    errors.size == 0
  end

  def errors_full(separator=', ')
    errors.join(separator)
  end

  def fail(msg)
    self.errors << msg
    false
  end

end
