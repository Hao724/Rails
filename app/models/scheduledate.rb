class Scheduledate < ApplicationRecord
    validates :title, presence: true,length: { in: 1..20 }
    validates :start, presence: true
    validates :end_date, presence: true
    validates :memo, length: { in: 0..500 }
    validate :start_end

    private
    
def start_end
    errors.add(:end_date, '表示させたいエラーメッセージ') if end_date.nil? || end_date < start
end
end