require 'vertx/buffer'
require 'vertx/write_stream'
require 'vertx/read_stream'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.file.AsyncFile
module Vertx
  class AsyncFile
    include Vertx::ReadStream
    include Vertx::WriteStream
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      @j_del.writeQueueFull
    end
    def handler(&handler)
      if handler != nil && handler.class == Proc
        @j_del.handler((Proc.new { |event| handler.call(Vertx::Buffer.new(event)) }))
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
    def write(buffer,position=nil,&handler)
      if buffer != nil && buffer.class.method_defined?(:j_del)
        if position != nil && position.class == Fixnum
          if handler != nil && handler.class == Proc
            @j_del.write(buffer.j_del,position,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
            return self
          end
          raise ArgumentError, 'dispatch error'
        end
        @j_del.write(buffer.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_queue_max_size(maxSize)
      if maxSize != nil && maxSize.class == Fixnum
        @j_del.setWriteQueueMaxSize(maxSize)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def drain_handler(&handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(handler)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def exception_handler(&handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler((Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def close(&handler)
      if handler != nil && handler.class == Proc
        return @j_del.close((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
      end
      @j_del.close
    end
    def read(buffer,offset,position,length,&handler)
      if buffer != nil && buffer.class.method_defined?(:j_del)
        if offset != nil && offset.class == Fixnum
          if position != nil && position.class == Fixnum
            if length != nil && length.class == Fixnum
              if handler != nil && handler.class == Proc
                @j_del.read(buffer.j_del,offset,position,length,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? Vertx::Buffer.new(ar.result) : nil) }))
                return self
              end
              raise ArgumentError, 'dispatch error'
            end
            raise ArgumentError, 'dispatch error'
          end
          raise ArgumentError, 'dispatch error'
        end
        raise ArgumentError, 'dispatch error'
      end
      raise ArgumentError, 'dispatch error'
    end
    def flush(&handler)
      if handler != nil && handler.class == Proc
        @j_del.flush((Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil) }))
        return self
      end
      @j_del.flush
      self
    end
    def set_read_pos(readPos)
      if readPos != nil && readPos.class == Fixnum
        @j_del.setReadPos(readPos)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_pos(readPos)
      if readPos != nil && readPos.class == Fixnum
        @j_del.setWritePos(readPos)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
  end
end
