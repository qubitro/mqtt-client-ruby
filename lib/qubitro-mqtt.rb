#!/usr/bin/env ruby

require 'logger'
require 'socket'
require 'thread'
require 'timeout'

require 'qubitro-mqtt/version'

# String encoding monkey patch for Ruby 1.8
unless String.method_defined?(:force_encoding)
  require 'qubitro-mqtt/patches/string_encoding.rb'
end

module MQTT
  # Default port number for unencrypted connections
  DEFAULT_PORT = 1883

  # Default port number for TLS/SSL encrypted connections
  DEFAULT_SSL_PORT = 8883

  # Super-class for other MQTT related exceptions
  class Exception < ::Exception
  end

  # A ProtocolException will be raised if there is a
  # problem with data received from a remote host
  class ProtocolException < MQTT::Exception
  end

  # A NotConnectedException will be raised when trying to
  # perform a function but no connection has been
  # established
  class NotConnectedException < MQTT::Exception
  end

  autoload :Client,   'qubitro-mqtt/client'
  autoload :Packet,   'qubitro-mqtt/packet'
  autoload :Proxy,    'qubitro-mqtt/proxy'

  # MQTT-SN
  module SN
    # Default port number for unencrypted connections
    DEFAULT_PORT = 1883

    # A ProtocolException will be raised if there is a
    # problem with data received from a remote host
    class ProtocolException < MQTT::Exception
    end

    autoload :Packet, 'qubitro-mqtt/sn/packet'
  end
end
