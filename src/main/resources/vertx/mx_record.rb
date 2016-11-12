require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.MxRecord
module Vertx
  #  Represent a Mail-Exchange-Record (MX) which was resolved for a domain.
  class MxRecord
    # @private
    # @param j_del [::Vertx::MxRecord] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::MxRecord] the underlying java delegate
    def j_del
      @j_del
    end
    @@j_api_type = Object.new
    def @@j_api_type.accept?(obj)
      obj.class == MxRecord
    end
    def @@j_api_type.wrap(obj)
      MxRecord.new(obj)
    end
    def @@j_api_type.unwrap(obj)
      obj.j_del
    end
    def self.j_api_type
      @@j_api_type
    end
    def self.j_class
      Java::IoVertxCoreDns::MxRecord.java_class
    end
    #  The priority of the MX record.
    # @return [Fixnum]
    def priority
      if !block_given?
        return @j_del.java_method(:priority, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling priority()"
    end
    #  The name of the MX record
    # @return [String]
    def name
      if !block_given?
        return @j_del.java_method(:name, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling name()"
    end
  end
end
