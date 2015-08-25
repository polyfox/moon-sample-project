class State
  class Instance
    def initialize(engine)
      @engine = engine
      @texture = Moon::Texture.new('resources/blocks/block_16x16_007.png')
      @sprite = Moon::Sprite.new(@texture)
      @sprite.opacity = 0.5
    end

    def step(delta)
      @sprite.render 0, 0, 0
    end
  end

  def self.step(engine, delta)
    @i ||= Instance.new(engine)
    @i.step delta
  end
end

def step(engine, delta)
  State.step(engine, delta)
end
