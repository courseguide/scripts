import MySQLdb
conn = MySQLdb.connect(host= "localhost",
                  user="root",
                  passwd="",
                  db="course_guide_db2")
#conn.autocommit()
#x = conn.cursor()
print "cursor opened"
try:
   with open('file345.sql','r') as inserts:
	
	print "file opened"
	print conn
	x = conn.cursor()	
	print x
	for statement in inserts:
	     	print "statement", statement
        	x.execute(statement)
		conn.commit()
	print "committed"
	conn.close()
	     
except:
	print "something went wrong"
	conn.rollback()

