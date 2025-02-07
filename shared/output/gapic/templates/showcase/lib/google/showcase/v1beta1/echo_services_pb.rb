# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/showcase/v1beta1/echo.proto for package 'google.showcase.v1beta1'
# Original file comments:
# Copyright 2018 Google LLC
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
#

require 'grpc'
require 'google/showcase/v1beta1/echo_pb'

module Google
  module Showcase
    module V1beta1
      module Echo
        # This service is used showcase the four main types of rpcs - unary, server
        # side streaming, client side streaming, and bidirectional streaming. This
        # service also exposes methods that explicitly implement server delay, and
        # paginated calls. Set the 'showcase-trailer' metadata key on any method
        # to have the values echoed in the response trailers. Set the 
        # 'x-goog-request-params' metadata key on any method to have the values
        # echoed in the response headers.
        class Service

          include ::GRPC::GenericService

          self.marshal_class_method = :encode
          self.unmarshal_class_method = :decode
          self.service_name = 'google.showcase.v1beta1.Echo'

          # This method simply echoes the request. This method showcases unary RPCs.
          rpc :Echo, ::Google::Showcase::V1beta1::EchoRequest, ::Google::Showcase::V1beta1::EchoResponse
          # This method splits the given content into words and will pass each word back
          # through the stream. This method showcases server-side streaming RPCs.
          rpc :Expand, ::Google::Showcase::V1beta1::ExpandRequest, stream(::Google::Showcase::V1beta1::EchoResponse)
          # This method will collect the words given to it. When the stream is closed
          # by the client, this method will return the a concatenation of the strings
          # passed to it. This method showcases client-side streaming RPCs.
          rpc :Collect, stream(::Google::Showcase::V1beta1::EchoRequest), ::Google::Showcase::V1beta1::EchoResponse
          # This method, upon receiving a request on the stream, will pass the same
          # content back on the stream. This method showcases bidirectional
          # streaming RPCs.
          rpc :Chat, stream(::Google::Showcase::V1beta1::EchoRequest), stream(::Google::Showcase::V1beta1::EchoResponse)
          # This is similar to the Expand method but instead of returning a stream of
          # expanded words, this method returns a paged list of expanded words.
          rpc :PagedExpand, ::Google::Showcase::V1beta1::PagedExpandRequest, ::Google::Showcase::V1beta1::PagedExpandResponse
          # This is similar to the PagedExpand except that it uses
          # max_results instead of page_size, as some legacy APIs still
          # do. New APIs should NOT use this pattern.
          rpc :PagedExpandLegacy, ::Google::Showcase::V1beta1::PagedExpandLegacyRequest, ::Google::Showcase::V1beta1::PagedExpandResponse
          # This method returns a map containing lists of words that appear in the input, keyed by their
          # initial character. The only words returned are the ones included in the current page,
          # as determined by page_token and page_size, which both refer to the word indices in the
          # input. This paging result consisting of a map of lists is a pattern used by some legacy
          # APIs. New APIs should NOT use this pattern.
          rpc :PagedExpandLegacyMapped, ::Google::Showcase::V1beta1::PagedExpandRequest, ::Google::Showcase::V1beta1::PagedExpandLegacyMappedResponse
          # This method will wait for the requested amount of time and then return.
          # This method showcases how a client handles a request timeout.
          rpc :Wait, ::Google::Showcase::V1beta1::WaitRequest, ::Google::Longrunning::Operation
          # This method will block (wait) for the requested amount of time
          # and then return the response or error.
          # This method showcases how a client handles delays or retries.
          rpc :Block, ::Google::Showcase::V1beta1::BlockRequest, ::Google::Showcase::V1beta1::BlockResponse
        end

        Stub = Service.rpc_stub_class
      end
    end
  end
end
