#!/usr/bin/ruby

def incrementar(x,delta=1)
   # raise solo lanza un RunTimeError
   raise if x.is_a?(String) || delta.is_a?(String)
   x + delta
end

def concatenar(*args)
   args.join(' ').tr("\t\n", '').squeeze(" ")
end