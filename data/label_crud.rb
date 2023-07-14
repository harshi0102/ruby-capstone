require 'json'
require_relative '../data/book_crud'

def populate_labels
  fetch_data('labels').map do |label|
    Label.new(label[:title], label[:color])
  end
end

def load_labels
  labels_data = []
  return labels_data unless File.exist?('./data/labels.json')

  labels_json = File.read('./data/labels.json')
  return labels_data if labels_json.empty?

  JSON.parse(labels_json).map do |label|
    Label.new(label['title'], label['color'])
  end
end
