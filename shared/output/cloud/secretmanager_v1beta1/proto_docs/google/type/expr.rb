# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Type
    # Represents an expression text. Example:
    #
    #     title: "User account presence"
    #     description: "Determines whether the request has a user account"
    #     expression: "size(request.user) > 0"
    # @!attribute [rw] expression
    #   @return [::String]
    #     Textual representation of an expression in
    #     Common Expression Language syntax.
    #
    #     The application context of the containing message determines which
    #     well-known feature set of CEL is supported.
    # @!attribute [rw] title
    #   @return [::String]
    #     An optional title for the expression, i.e. a short string describing
    #     its purpose. This can be used e.g. in UIs which allow to enter the
    #     expression.
    # @!attribute [rw] description
    #   @return [::String]
    #     An optional description of the expression. This is a longer text which
    #     describes the expression, e.g. when hovered over it in a UI.
    # @!attribute [rw] location
    #   @return [::String]
    #     An optional string indicating the location of the expression for error
    #     reporting, e.g. a file name and a position in the file.
    class Expr
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
