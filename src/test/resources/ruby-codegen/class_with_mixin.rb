require 'ruby-codegen/mixin'
require 'vertx/util/utils.rb'
# Generated from io.vertx.test.support.ClassWithMixin
module RubyCodegen
  class ClassWithMixin
    include ::RubyCodegen::Mixin
    # @private
    # @param j_del [::RubyCodegen::ClassWithMixin] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::RubyCodegen::ClassWithMixin] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      true
    end
    def @@j_api_type.wrap(obj)
      ClassWithMixin.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxTestSupport::ClassWithMixin.java_class
    end
    # @return [void]
    def super_mixin_method
      if !block_given?
        return @j_del.java_method(:superMixinMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling super_mixin_method()"
    end
    # @return [void]
    def mixin_method
      if !block_given?
        return @j_del.java_method(:mixinMethod, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling mixin_method()"
    end
  end
end
