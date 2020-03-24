

## Qubitro Ruby MQTT Client Library

Ruby client library that implements the MQTT protocol, a lightweight protocol for publish/subscribe messaging.

[![Actions Status](https://github.com/qubitro/mqtt-client-ruby/workflows/Ruby%20Gem/badge.svg)](https://github.com/qubitro/mqtt-client-ruby/actions) [![Gem Version](https://badge.fury.io/rb/qubitro-mqtt.svg)](https://badge.fury.io/rb/qubitro-mqtt)

### Example

```ruby
require 'qubitro-mqtt'

MQTT::Client.connect(
  :host => host,
  :port => 1883,
  :client_id => deviceID,
  :device_id => deviceID,
  :device_token => device_token,
  :ack_timeout => 15,
  :will_topic => deviceID,
  :will_payload => payload,
) do |client|
  puts 'connected'
end 
```

[Visit Qubitro documentation](https://docs.qubitro.com/client-guides/connect-device/raspberry-pi/ruby)


