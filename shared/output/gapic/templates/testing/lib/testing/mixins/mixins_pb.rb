# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: testing/mixins/mixins.proto

require 'google/protobuf'

require 'google/api/client_pb'
require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("testing/mixins/mixins.proto", :syntax => :proto3) do
    add_message "testing.mixins.Request" do
    end
    add_message "testing.mixins.Response" do
    end
  end
end

module Testing
  module Mixins
    Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("testing.mixins.Request").msgclass
    Response = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("testing.mixins.Response").msgclass
  end
end
