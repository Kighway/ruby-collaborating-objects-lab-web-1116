
class MP3Importer
  attr_accessor :path

  def initialize (path)
    @path = path
  end

  def path
    @path
  end

  def files
    Dir["#{path}/*"] .collect! { |fullpath| fullpath.gsub("#{path}/", "")}
  end

  def import
    files.each { |filename| Song.new_by_filename(filename)}
  end

end
