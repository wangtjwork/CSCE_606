class CartesianProduct
    include Enumerable
    def initialize(array_1 , array_2)
        @res = Array.new
        @array_1 = array_1
        @array_2 = array_2
        @array_1.each do |i|
            @array_2.each do |j|
                if @res.empty?
                    @res = [[i,j]]
                else
                    @res<<([i,j])
                end
            end
        end
        return @res
    end
    def each
        @res.each { |index| yield(index) }
    end
end
