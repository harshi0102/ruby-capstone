def load_sources
  file_path = File.join(__dir__, 'sources.json')
  JSON.parse(File.read(file_path)) if File.exist?(file_path)
end
