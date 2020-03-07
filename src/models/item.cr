class Item < Jennifer::Model::Base
  with_timestamps
  mapping(
    id: Primary32, # is an alias for Int32? primary key
    name: String,
    created_at: Time?,
    updated_at: Time?
  )
end