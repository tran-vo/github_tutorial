class roman_converter:
   def roman_to_int(self, s):
       rval = {'I':1, 'V':5, 'X': 10, 'L': 50, 'C':100, 'D':500, 'M':1000}
       ival = 0
       for i in range(len(s)):
           if i> 0 and rval[s[i]] >rval[s[i-1]]:
               ival += rval[s[i]] - 2 * rval[s[i - 1]]
           else:
               ival += rval[s[i]]
           return ival
 
 
 print(roman_converter().roman_to_int('C'))
 print(roman_converter().roman_to_int('MMMM'))
 print(roman_converter().roman_to_int('MMMCMLXXXVI'))
