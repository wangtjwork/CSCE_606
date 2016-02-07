class Dessert
    def initialize(name, calories)
        @name = name
        @calories = calories
    end

    def healthy?
        return @calories < 200
    end

    def delicious?
        true
    end
end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
        @flavor = flavor
        @calories = calories
        @name = name
    end

    def delicious?
        if @flavor == "black licorice"
            false
        else
            true
        end
    end
    
end
