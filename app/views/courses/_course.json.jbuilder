json.extract! course, :id, :course_id, :name, :parts, :start_date, :end_date, :start_hour, :end_time, :livestream_link, :amazon_link, :studio, :author_id, :created_at, :updated_at
json.url course_url(course, format: :json)