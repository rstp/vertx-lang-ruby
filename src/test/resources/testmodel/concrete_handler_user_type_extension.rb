require 'testmodel/refed_interface1'
require 'testmodel/concrete_handler_user_type'
require 'vertx/util/utils.rb'
# Generated from io.vertx.codegen.testmodel.ConcreteHandlerUserTypeExtension
module Testmodel
  class ConcreteHandlerUserTypeExtension < ::Testmodel::ConcreteHandlerUserType
    # @private
    # @param j_del [::Testmodel::ConcreteHandlerUserTypeExtension] the java delegate
    def initialize(j_del)
      super(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Testmodel::ConcreteHandlerUserTypeExtension] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == ConcreteHandlerUserTypeExtension
    end
    def @@j_api_type.wrap(obj)
      ConcreteHandlerUserTypeExtension.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCodegenTestmodel::ConcreteHandlerUserTypeExtension.java_class
    end
    # @param [::Testmodel::RefedInterface1] arg0 
    # @return [void]
    def handle(arg0=nil)
      if arg0.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:handle, [Java::IoVertxCodegenTestmodel::RefedInterface1.java_class]).call(arg0.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling handle(arg0)"
    end
  end
end
