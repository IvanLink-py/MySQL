set path_mysql="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"

%path_mysql% -uroot -p1111 world --xml  -e "select * from city" > "data\11_data.xml"
%path_mysql% -uroot -p1111 world --html -e "select * from city" > "data\11_data.html"