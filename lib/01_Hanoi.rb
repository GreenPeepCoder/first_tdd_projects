class TowersOfHanoiGame

    def initialize
        @stacks = [[3, 2, 1], [], []]
    end

    def render
        'Tower 0: ' + @stacks[0].join(' ') + "\n" +
        'Tower 1: ' + @stacks[1].join(' ') + "\n" +
        'Tower 2: ' + @stacks[2].join(' ') + "\n" 
    end
    private 
    attr_reader :stacks
end

if $PROGRAM_NAME == __FILE__
    TowersOfHanoiGame.new.play
end