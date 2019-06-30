require 'pry'

def begins_with_r(array)
    if array.select {|x| 
    x.start_with?("r") == false} == []
        true
    else
        false
    end
      
end

def contain_a(array)
    array.collect {|x| 
        x.include?("a")
}
end

def first_wa(array)
    array.collect {|x|
        if x.to_s.start_with?("wa")
            return x
        end
    }
end

=begin
def remove_non_strings(array)
    array.map.with_index {|x, index|
        if x.class != String
            array.delete_at(index)
        end
    }
end
def remove_non_strings(array)
    array.map.with_index {|x, index|
        if x.class == String
            x
        else
            array.delete_at(index)
        end
    }
end
=end

def remove_non_strings(array)
    array.delete_if {|x| x.class != String}
end

def count_elements(array)
    # create new hash with new key = :count 
    # and new value = array.count(x)
    array.map.with_index do |x,index|
        array[index][:count] = array.count(x)
    end
    array
end

def merge_data(data1,data2)
    merged = {}
    data1.each {|key,value|
        merged[key] = value
}
    data2.each {|key,value|
        merged[key] = value
}
    data2.each do |k,v|
        
binding.pry
end

def find_cool(hash)

end

=begin
def organize_schools(schools)
    orgschools = {}
    schools.collect {|key,value|
        value.each {|location, result|
            orgschools[result] = key
            orgschools.values << key
        }
}
binding.pry
end
=end