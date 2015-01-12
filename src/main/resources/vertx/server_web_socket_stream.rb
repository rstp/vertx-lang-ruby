require 'vertx/server_web_socket'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.ServerWebSocketStream
module Vertx
  class ServerWebSocketStream
    include Vertx::ReadStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def exception_handler(&handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(&handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::ServerWebSocket.new(event)) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause
      self
    end
    def resume()
      @j_del.resume
      self
    end
    def end_handler(&endHandler)
      if endHandler != nil && endHandler.class == Proc
        @j_del.endHandler(endHandler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end
