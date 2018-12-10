class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :title
end
