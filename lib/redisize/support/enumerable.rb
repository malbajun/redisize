module Redisize
   module Support
      module Enumerable
         def self.included kls
            kls.class_eval do
               def redisize
                  case self
                  when Hash
                     redisize_hash { map { |x| x.jsonize } }
                  when Array
                     redisize_array { map { |x| x.jsonize } }
                  else
                     x.jsonize
                  end
               end
            end
         end
      end
   end
end
