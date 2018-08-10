# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module IamcredentialsV1
      
      # 
      class GenerateAccessTokenRequest
        include Google::Apis::Core::Hashable
      
        # The sequence of service accounts in a delegation chain. Each service
        # account must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on its next service account in the chain. The last service account in the
        # chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on the service account that is specified in the `name` field of the
        # request.
        # The delegates must have the following format:
        # `projects/-/serviceAccounts/`ACCOUNT_EMAIL_OR_UNIQUEID``
        # Corresponds to the JSON property `delegates`
        # @return [Array<String>]
        attr_accessor :delegates
      
        # The desired lifetime duration of the access token in seconds.
        # Must be set to a value less than or equal to 3600 (1 hour). If a value is
        # not specified, the token's lifetime will be set to a default value of one
        # hour.
        # Corresponds to the JSON property `lifetime`
        # @return [String]
        attr_accessor :lifetime
      
        # Code to identify the scopes to be included in the OAuth 2.0 access token.
        # See https://developers.google.com/identity/protocols/googlescopes for more
        # information.
        # At least one value required.
        # Corresponds to the JSON property `scope`
        # @return [Array<String>]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delegates = args[:delegates] if args.key?(:delegates)
          @lifetime = args[:lifetime] if args.key?(:lifetime)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # 
      class GenerateAccessTokenResponse
        include Google::Apis::Core::Hashable
      
        # The OAuth 2.0 access token.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # Token expiration time.
        # The expiration time is always set.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
        end
      end
      
      # 
      class GenerateIdTokenRequest
        include Google::Apis::Core::Hashable
      
        # The audience for the token, such as the API or account that this token
        # grants access to.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # The sequence of service accounts in a delegation chain. Each service
        # account must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on its next service account in the chain. The last service account in the
        # chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on the service account that is specified in the `name` field of the
        # request.
        # The delegates must have the following format:
        # `projects/-/serviceAccounts/`ACCOUNT_EMAIL_OR_UNIQUEID``
        # Corresponds to the JSON property `delegates`
        # @return [Array<String>]
        attr_accessor :delegates
      
        # Include the service account email in the token. If set to `true`, the
        # token will contain `email` and `email_verified` claims.
        # Corresponds to the JSON property `includeEmail`
        # @return [Boolean]
        attr_accessor :include_email
        alias_method :include_email?, :include_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @delegates = args[:delegates] if args.key?(:delegates)
          @include_email = args[:include_email] if args.key?(:include_email)
        end
      end
      
      # 
      class GenerateIdTokenResponse
        include Google::Apis::Core::Hashable
      
        # The OpenId Connect ID token.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # 
      class SignBlobRequest
        include Google::Apis::Core::Hashable
      
        # The sequence of service accounts in a delegation chain. Each service
        # account must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on its next service account in the chain. The last service account in the
        # chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on the service account that is specified in the `name` field of the
        # request.
        # The delegates must have the following format:
        # `projects/-/serviceAccounts/`ACCOUNT_EMAIL_OR_UNIQUEID``
        # Corresponds to the JSON property `delegates`
        # @return [Array<String>]
        attr_accessor :delegates
      
        # The bytes to sign.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delegates = args[:delegates] if args.key?(:delegates)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # 
      class SignBlobResponse
        include Google::Apis::Core::Hashable
      
        # The ID of the key used to sign the blob.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # The signed blob.
        # Corresponds to the JSON property `signedBlob`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signed_blob
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @signed_blob = args[:signed_blob] if args.key?(:signed_blob)
        end
      end
      
      # 
      class SignJwtRequest
        include Google::Apis::Core::Hashable
      
        # The sequence of service accounts in a delegation chain. Each service
        # account must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on its next service account in the chain. The last service account in the
        # chain must be granted the `roles/iam.serviceAccountTokenCreator` role
        # on the service account that is specified in the `name` field of the
        # request.
        # The delegates must have the following format:
        # `projects/-/serviceAccounts/`ACCOUNT_EMAIL_OR_UNIQUEID``
        # Corresponds to the JSON property `delegates`
        # @return [Array<String>]
        attr_accessor :delegates
      
        # The JWT payload to sign: a JSON object that contains a JWT Claims Set.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delegates = args[:delegates] if args.key?(:delegates)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # 
      class SignJwtResponse
        include Google::Apis::Core::Hashable
      
        # The ID of the key used to sign the JWT.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # The signed JWT.
        # Corresponds to the JSON property `signedJwt`
        # @return [String]
        attr_accessor :signed_jwt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @signed_jwt = args[:signed_jwt] if args.key?(:signed_jwt)
        end
      end
    end
  end
end
