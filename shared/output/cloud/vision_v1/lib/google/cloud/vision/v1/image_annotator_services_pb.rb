# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/vision/v1/image_annotator.proto for package 'google.cloud.vision.v1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/vision/v1/image_annotator_pb'

module Google
  module Cloud
    module Vision
      module V1
        module ImageAnnotator
          # Service that performs Google Cloud Vision API detection tasks over client
          # images, such as face, landmark, logo, label, and text detection. The
          # ImageAnnotator service returns detected entities from the images.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.vision.v1.ImageAnnotator'

            # Run image detection and annotation for a batch of images.
            rpc :BatchAnnotateImages, ::Google::Cloud::Vision::V1::BatchAnnotateImagesRequest, ::Google::Cloud::Vision::V1::BatchAnnotateImagesResponse
            # Service that performs image detection and annotation for a batch of files.
            # Now only "application/pdf", "image/tiff" and "image/gif" are supported.
            #
            # This service will extract at most 5 (customers can specify which 5 in
            # AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each
            # file provided and perform detection and annotation for each image
            # extracted.
            rpc :BatchAnnotateFiles, ::Google::Cloud::Vision::V1::BatchAnnotateFilesRequest, ::Google::Cloud::Vision::V1::BatchAnnotateFilesResponse
            # Run asynchronous image detection and annotation for a list of images.
            #
            # Progress and results can be retrieved through the
            # `google.longrunning.Operations` interface.
            # `Operation.metadata` contains `OperationMetadata` (metadata).
            # `Operation.response` contains `AsyncBatchAnnotateImagesResponse` (results).
            #
            # This service will write image annotation outputs to json files in customer
            # GCS bucket, each json file containing BatchAnnotateImagesResponse proto.
            rpc :AsyncBatchAnnotateImages, ::Google::Cloud::Vision::V1::AsyncBatchAnnotateImagesRequest, ::Google::Longrunning::Operation
            # Run asynchronous image detection and annotation for a list of generic
            # files, such as PDF files, which may contain multiple pages and multiple
            # images per page. Progress and results can be retrieved through the
            # `google.longrunning.Operations` interface.
            # `Operation.metadata` contains `OperationMetadata` (metadata).
            # `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).
            rpc :AsyncBatchAnnotateFiles, ::Google::Cloud::Vision::V1::AsyncBatchAnnotateFilesRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
