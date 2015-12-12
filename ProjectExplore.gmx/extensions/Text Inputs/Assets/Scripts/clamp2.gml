/// clamp2(val, min, max)
// Like GM's clamp(), but if max is smaller than min, zero is returned.

if (argument2 < argument1) return 0;
return clamp(argument0, argument1, argument2);