class State
  class Instance
    def initialize(engine)
      @engine = engine
      @sprite = Moon::Sprite.new('resources/blocks/block_16x16_007.png')
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
