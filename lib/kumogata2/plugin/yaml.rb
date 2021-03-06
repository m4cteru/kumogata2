require 'yaml'

class Kumogata2::Plugin::YAML
  Kumogata2::Plugin.register(:yaml, ['yaml', 'yml', 'template'], self)

  def initialize(options)
    @options = options
  end

  def parse(str)
    YAML.load(str)
  end

  def dump(hash, color = true)
    Hashie.stringify_keys!(hash)
    if color
      YAML.dump(hash).colorize_as(:yaml)
    else
      YAML.dump(hash)
    end
  end
end
