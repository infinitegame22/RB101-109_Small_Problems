s = 'abc'
puts s.public_methods(false).inspect

s = 'abc'
puts s.public_methods(false).inspect

s = 'abc'
puts s.public_methods(false).inspect
#Object#public_methods() has a default argument of true for including inherited methods,
#setting this to false restricts methods to those relation only to the caller 
#When the all parameter is set to false, only those methods in the receiver will be listed.
#a.k.a the parent methods won't be listed.