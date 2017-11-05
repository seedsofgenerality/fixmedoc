#!/usr/bin/python
# Copyright (c) 2017 Christopher Lewis Marshall

import sys
 
if len(sys.argv)<2:
   usage="<issue num> [alt tag]"
   sys.stderr.write("%s\n" % usage)
   sys.exit(1)
issue_num= int(sys.argv[1])

try:
   alt_tag= sys.argv[2]
   tag= "FIXME_INFO_%s_%d_" %  (alt_tag, issue_num) # FIXME_INFO_IGNORE

except IndexError:
   tag= "FIXME_INFO_ISSUE_%d_" % issue_num # FIXME_INFO_IGNORE

index_loc= tag.count("_")

ll=[]
line= sys.stdin.readline()
while line:
   if tag in line:
      try:
         i= float(line.split(':')[2].split('_')[index_loc])
         ll.append((i,line))
      except IndexError:
         pass
      except ValueError as e:
          print "couldn't parse line: ",i,line,e
          raise
      
   line= sys.stdin.readline()

ll.sort(lambda x,y : cmp(x[0],y[0]))
print ''.join([line for i,line in ll])
