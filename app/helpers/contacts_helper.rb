module ContactsHelper
  def contact_fields
    ignore_attributes  = ['id', 'franchise', 'user_id', 'created_at', 'updated_at']
    attribute_names = Contact.attribute_names
    return (attribute_names - ignore_attributes)
  end
end