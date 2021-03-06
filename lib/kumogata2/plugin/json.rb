class Kumogata2::Plugin::JSON
  Kumogata2::Plugin.register(:json, ['json', 'js'], self)

  def initialize(options)
    @options = options
  end

  def parse(str)
    JSON.parse(str)
  end

  def dump(hash, color = true)
    if color
      JSON.pretty_generate(hash).colorize_as(:json)
    else
      JSON.pretty_generate(hash)
    end
  end
end
