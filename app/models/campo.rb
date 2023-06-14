class Campo < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_full_text, against: {
    userName: 'A',
    description: 'B',
    
}
end
