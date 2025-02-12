# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: transcoding_example.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("transcoding_example.proto", :syntax => :proto3) do
    add_message "gapic.examples.transcoding.Request" do
      optional :id, :int32, 1
      optional :name, :string, 2
      proto3_optional :maybe_num, :int32, 3
      optional :sub_request, :message, 4, "gapic.examples.transcoding.Request"
      repeated :nums, :int32, 5
      repeated :strs, :string, 6
      proto3_optional :IPProtocol, :enum, 7, "gapic.examples.transcoding.Protocol"
    end
    add_enum "gapic.examples.transcoding.Protocol" do
      value :Unknown, 0
      value :TCP, 1
      value :UDP, 2
    end
  end
end

module Gapic
  module Examples
    module Transcoding
      Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gapic.examples.transcoding.Request").msgclass
      Protocol = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gapic.examples.transcoding.Protocol").enummodule
    end
  end
end
