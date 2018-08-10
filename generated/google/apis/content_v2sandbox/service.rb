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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ContentV2sandbox
      # Content API for Shopping
      #
      # Manages product items, inventory, and Merchant Center accounts for Google
      #  Shopping.
      #
      # @example
      #    require 'google/apis/content_v2sandbox'
      #
      #    Content = Google::Apis::ContentV2sandbox # Alias the module
      #    service = Content::ShoppingContentService.new
      #
      # @see https://developers.google.com/shopping-content
      class ShoppingContentService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'content/v2sandbox/')
          @batch_path = 'batch/content/v2sandbox'
        end
        
        # Creates a charge invoice for a shipment group, and triggers a charge capture
        # for non-facilitated payment orders.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrderinvoicesCreateChargeInvoiceRequest] orderinvoices_create_charge_invoice_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrderinvoicesCreateChargeInvoiceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrderinvoicesCreateChargeInvoiceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createchargeinvoice_orderinvoice(merchant_id, order_id, orderinvoices_create_charge_invoice_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orderinvoices/{orderId}/createChargeInvoice', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrderinvoicesCreateChargeInvoiceRequest::Representation
          command.request_object = orderinvoices_create_charge_invoice_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrderinvoicesCreateChargeInvoiceResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrderinvoicesCreateChargeInvoiceResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a refund invoice for one or more shipment groups, and triggers a
        # refund for non-facilitated payment orders.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrderinvoicesCreateRefundInvoiceRequest] orderinvoices_create_refund_invoice_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrderinvoicesCreateRefundInvoiceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrderinvoicesCreateRefundInvoiceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createrefundinvoice_orderinvoice(merchant_id, order_id, orderinvoices_create_refund_invoice_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orderinvoices/{orderId}/createRefundInvoice', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrderinvoicesCreateRefundInvoiceRequest::Representation
          command.request_object = orderinvoices_create_refund_invoice_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrderinvoicesCreateRefundInvoiceResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrderinvoicesCreateRefundInvoiceResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Notify about successfully authorizing user's payment method for a given amount.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order for for which payment authorization is happening.
        # @param [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthApprovedRequest] orderpayments_notify_auth_approved_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthApprovedResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthApprovedResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def notifyauthapproved_orderpayment(merchant_id, order_id, orderpayments_notify_auth_approved_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orderpayments/{orderId}/notifyAuthApproved', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthApprovedRequest::Representation
          command.request_object = orderpayments_notify_auth_approved_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthApprovedResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthApprovedResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Notify about failure to authorize user's payment method.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order for which payment authorization was declined.
        # @param [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthDeclinedRequest] orderpayments_notify_auth_declined_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthDeclinedResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthDeclinedResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def notifyauthdeclined_orderpayment(merchant_id, order_id, orderpayments_notify_auth_declined_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orderpayments/{orderId}/notifyAuthDeclined', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthDeclinedRequest::Representation
          command.request_object = orderpayments_notify_auth_declined_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthDeclinedResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyAuthDeclinedResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Notify about charge on user's selected payments method.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order for which charge is happening.
        # @param [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyChargeRequest] orderpayments_notify_charge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyChargeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyChargeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def notifycharge_orderpayment(merchant_id, order_id, orderpayments_notify_charge_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orderpayments/{orderId}/notifyCharge', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyChargeRequest::Representation
          command.request_object = orderpayments_notify_charge_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyChargeResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyChargeResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Notify about refund on user's selected payments method.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order for which charge is happening.
        # @param [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyRefundRequest] orderpayments_notify_refund_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyRefundResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrderpaymentsNotifyRefundResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def notifyrefund_orderpayment(merchant_id, order_id, orderpayments_notify_refund_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orderpayments/{orderId}/notifyRefund', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyRefundRequest::Representation
          command.request_object = orderpayments_notify_refund_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyRefundResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrderpaymentsNotifyRefundResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an order as acknowledged.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersAcknowledgeRequest] orders_acknowledge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersAcknowledgeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersAcknowledgeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_order(merchant_id, order_id, orders_acknowledge_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/acknowledge', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersAcknowledgeRequest::Representation
          command.request_object = orders_acknowledge_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersAcknowledgeResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersAcknowledgeResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Moves a test order from state "inProgress" to state "
        # pendingShipment".
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the test order to modify.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersAdvanceTestOrderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersAdvanceTestOrderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def advancetestorder_order(merchant_id, order_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/testorders/{orderId}/advance', options)
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersAdvanceTestOrderResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersAdvanceTestOrderResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels all line items in an order, making a full refund.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order to cancel.
        # @param [Google::Apis::ContentV2sandbox::OrdersCancelRequest] orders_cancel_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersCancelResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersCancelResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_order(merchant_id, order_id, orders_cancel_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/cancel', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersCancelRequest::Representation
          command.request_object = orders_cancel_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersCancelResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersCancelResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a line item, making a full refund.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersCancelLineItemRequest] orders_cancel_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersCancelLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersCancelLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancellineitem_order(merchant_id, order_id, orders_cancel_line_item_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/cancelLineItem', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersCancelLineItemRequest::Representation
          command.request_object = orders_cancel_line_item_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersCancelLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersCancelLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Creates a test order.
        # @param [Fixnum] merchant_id
        #   The ID of the account that should manage the order. This cannot be a multi-
        #   client account.
        # @param [Google::Apis::ContentV2sandbox::OrdersCreateTestOrderRequest] orders_create_test_order_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersCreateTestOrderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersCreateTestOrderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createtestorder_order(merchant_id, orders_create_test_order_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/testorders', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersCreateTestOrderRequest::Representation
          command.request_object = orders_create_test_order_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersCreateTestOrderResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersCreateTestOrderResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves or modifies multiple orders in a single request.
        # @param [Google::Apis::ContentV2sandbox::OrdersCustomBatchRequest] orders_custom_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersCustomBatchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersCustomBatchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def custombatch_order(orders_custom_batch_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'orders/batch', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersCustomBatchRequest::Representation
          command.request_object = orders_custom_batch_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersCustomBatchResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersCustomBatchResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an order from your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::Order] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::Order]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_order(merchant_id, order_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{merchantId}/orders/{orderId}', options)
          command.response_representation = Google::Apis::ContentV2sandbox::Order::Representation
          command.response_class = Google::Apis::ContentV2sandbox::Order
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an order using merchant order id.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] merchant_order_id
        #   The merchant order id to be looked for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersGetByMerchantOrderIdResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersGetByMerchantOrderIdResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getbymerchantorderid_order(merchant_id, merchant_order_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{merchantId}/ordersbymerchantid/{merchantOrderId}', options)
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersGetByMerchantOrderIdResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersGetByMerchantOrderIdResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['merchantOrderId'] = merchant_order_id unless merchant_order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sandbox only. Retrieves an order template that can be used to quickly create a
        # new order in sandbox.
        # @param [Fixnum] merchant_id
        #   The ID of the account that should manage the order. This cannot be a multi-
        #   client account.
        # @param [String] template_name
        #   The name of the template to retrieve.
        # @param [String] country
        #   The country of the template to retrieve. Defaults to US.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersGetTestOrderTemplateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersGetTestOrderTemplateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def gettestordertemplate_order(merchant_id, template_name, country: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{merchantId}/testordertemplates/{templateName}', options)
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersGetTestOrderTemplateResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersGetTestOrderTemplateResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['templateName'] = template_name unless template_name.nil?
          command.query['country'] = country unless country.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Notifies that item return and refund was handled directly in store.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersInStoreRefundLineItemRequest] orders_in_store_refund_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersInStoreRefundLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersInStoreRefundLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def instorerefundlineitem_order(merchant_id, order_id, orders_in_store_refund_line_item_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/inStoreRefundLineItem', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersInStoreRefundLineItemRequest::Representation
          command.request_object = orders_in_store_refund_line_item_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersInStoreRefundLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersInStoreRefundLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the orders in your Merchant Center account.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [Boolean] acknowledged
        #   Obtains orders that match the acknowledgement status. When set to true,
        #   obtains orders that have been acknowledged. When false, obtains orders that
        #   have not been acknowledged.
        #   We recommend using this filter set to false, in conjunction with the
        #   acknowledge call, such that only un-acknowledged orders are returned.
        # @param [Fixnum] max_results
        #   The maximum number of orders to return in the response, used for paging. The
        #   default value is 25 orders per page, and the maximum allowed value is 250
        #   orders per page.
        #   Known issue: All List calls will return all Orders without limit regardless of
        #   the value of this field.
        # @param [String] order_by
        #   The ordering of the returned list. The only supported value are placedDate
        #   desc and placedDate asc for now, which returns orders sorted by placement date.
        #   "placedDate desc" stands for listing orders by placement date, from oldest to
        #   most recent. "placedDate asc" stands for listing orders by placement date,
        #   from most recent to oldest. In future releases we'll support other sorting
        #   criteria.
        # @param [String] page_token
        #   The token returned by the previous request.
        # @param [String] placed_date_end
        #   Obtains orders placed before this date (exclusively), in ISO 8601 format.
        # @param [String] placed_date_start
        #   Obtains orders placed after this date (inclusively), in ISO 8601 format.
        # @param [Array<String>, String] statuses
        #   Obtains orders that match any of the specified statuses. Multiple values can
        #   be specified with comma separation. Additionally, please note that active is a
        #   shortcut for pendingShipment and partiallyShipped, and completed is a shortcut
        #   for shipped , partiallyDelivered, delivered, partiallyReturned, returned, and
        #   canceled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_orders(merchant_id, acknowledged: nil, max_results: nil, order_by: nil, page_token: nil, placed_date_end: nil, placed_date_start: nil, statuses: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{merchantId}/orders', options)
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersListResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersListResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.query['acknowledged'] = acknowledged unless acknowledged.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['placedDateEnd'] = placed_date_end unless placed_date_end.nil?
          command.query['placedDateStart'] = placed_date_start unless placed_date_start.nil?
          command.query['statuses'] = statuses unless statuses.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Refund a portion of the order, up to the full amount paid.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order to refund.
        # @param [Google::Apis::ContentV2sandbox::OrdersRefundRequest] orders_refund_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersRefundResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersRefundResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def refund_order(merchant_id, order_id, orders_refund_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/refund', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersRefundRequest::Representation
          command.request_object = orders_refund_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersRefundResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersRefundResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rejects return on an line item.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersRejectReturnLineItemRequest] orders_reject_return_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersRejectReturnLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersRejectReturnLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rejectreturnlineitem_order(merchant_id, order_id, orders_reject_return_line_item_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/rejectReturnLineItem', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersRejectReturnLineItemRequest::Representation
          command.request_object = orders_reject_return_line_item_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersRejectReturnLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersRejectReturnLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a line item.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersReturnLineItemRequest] orders_return_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersReturnLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersReturnLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def returnlineitem_order(merchant_id, order_id, orders_return_line_item_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/returnLineItem', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersReturnLineItemRequest::Representation
          command.request_object = orders_return_line_item_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersReturnLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersReturnLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns and refunds a line item. Note that this method can only be called on
        # fully shipped orders.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersReturnRefundLineItemRequest] orders_return_refund_line_item_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersReturnRefundLineItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersReturnRefundLineItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def returnrefundlineitem_order(merchant_id, order_id, orders_return_refund_line_item_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/returnRefundLineItem', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersReturnRefundLineItemRequest::Representation
          command.request_object = orders_return_refund_line_item_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersReturnRefundLineItemResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersReturnRefundLineItemResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets (overrides) merchant provided annotations on the line item.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersSetLineItemMetadataRequest] orders_set_line_item_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersSetLineItemMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersSetLineItemMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setlineitemmetadata_order(merchant_id, order_id, orders_set_line_item_metadata_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/setLineItemMetadata', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersSetLineItemMetadataRequest::Representation
          command.request_object = orders_set_line_item_metadata_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersSetLineItemMetadataResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersSetLineItemMetadataResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks line item(s) as shipped.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersShipLineItemsRequest] orders_ship_line_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersShipLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersShipLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def shiplineitems_order(merchant_id, order_id, orders_ship_line_items_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/shipLineItems', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersShipLineItemsRequest::Representation
          command.request_object = orders_ship_line_items_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersShipLineItemsResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersShipLineItemsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates ship by and delivery by dates for a line item.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersUpdateLineItemShippingDetailsRequest] orders_update_line_item_shipping_details_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersUpdateLineItemShippingDetailsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersUpdateLineItemShippingDetailsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatelineitemshippingdetails_order(merchant_id, order_id, orders_update_line_item_shipping_details_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/updateLineItemShippingDetails', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersUpdateLineItemShippingDetailsRequest::Representation
          command.request_object = orders_update_line_item_shipping_details_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersUpdateLineItemShippingDetailsResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersUpdateLineItemShippingDetailsResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the merchant order ID for a given order.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersUpdateMerchantOrderIdRequest] orders_update_merchant_order_id_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersUpdateMerchantOrderIdResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersUpdateMerchantOrderIdResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updatemerchantorderid_order(merchant_id, order_id, orders_update_merchant_order_id_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/updateMerchantOrderId', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersUpdateMerchantOrderIdRequest::Representation
          command.request_object = orders_update_merchant_order_id_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersUpdateMerchantOrderIdResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersUpdateMerchantOrderIdResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a shipment's status, carrier, and/or tracking ID.
        # @param [Fixnum] merchant_id
        #   The ID of the account that manages the order. This cannot be a multi-client
        #   account.
        # @param [String] order_id
        #   The ID of the order.
        # @param [Google::Apis::ContentV2sandbox::OrdersUpdateShipmentRequest] orders_update_shipment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ContentV2sandbox::OrdersUpdateShipmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ContentV2sandbox::OrdersUpdateShipmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def updateshipment_order(merchant_id, order_id, orders_update_shipment_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{merchantId}/orders/{orderId}/updateShipment', options)
          command.request_representation = Google::Apis::ContentV2sandbox::OrdersUpdateShipmentRequest::Representation
          command.request_object = orders_update_shipment_request_object
          command.response_representation = Google::Apis::ContentV2sandbox::OrdersUpdateShipmentResponse::Representation
          command.response_class = Google::Apis::ContentV2sandbox::OrdersUpdateShipmentResponse
          command.params['merchantId'] = merchant_id unless merchant_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
