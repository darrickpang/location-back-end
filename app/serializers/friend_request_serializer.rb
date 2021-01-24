class FriendRequestSerializer < ActiveModel::Serializer
  attributes :id, :requestor_id, :receiver_id, :status, :requestor_name, :receiver_name
end
