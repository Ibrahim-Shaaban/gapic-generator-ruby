# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'

module Google
  module Protobuf
    ::Protobuf::Optionable.inject(self) { ::Google::Protobuf::FileOptions }

    ##
    # Message Classes
    #
    class Duration < ::Protobuf::Message; end


    ##
    # File Options
    #
    set_option :java_package, "com.google.protobuf"
    set_option :java_outer_classname, "DurationProto"
    set_option :java_multiple_files, true
    set_option :go_package, "github.com/golang/protobuf/ptypes/duration"
    set_option :cc_enable_arenas, true
    set_option :objc_class_prefix, "GPB"
    set_option :csharp_namespace, "Google.Protobuf.WellKnownTypes"


    ##
    # Message Fields
    #
    class Duration
      optional :int64, :seconds, 1
      optional :int32, :nanos, 2
    end

  end

end

