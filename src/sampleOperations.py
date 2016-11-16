import locale
#locale.atof('22,990')
import re
# print(float('22,990'.replace(",","")))
# print(1+1)
#
# if 1==1:
#     print('Hello, world!')
#
# if False:
#     print('HBye, world!')
#
# elif True:
#     print("done")
#
# list ='["sandesh","priyanka"]'
#
# for name in list:
#     print(name)
#

str="san- san"

print(re.sub('\W+' , '', str.replace(" ","_")))