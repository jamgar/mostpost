class Private::Conversation < ApplicationRecord
  self.table_name = 'private_conversations'

  has_many  :messages,
            class_name: "Private::Messsage",
            foreign_key: :conversation_id
  belongs_to :sender, foreign_key: :sender_id, class_name: 'User'
  belongs_to :recipient, forein_key: :recipient_id, class_name: 'User'
end
