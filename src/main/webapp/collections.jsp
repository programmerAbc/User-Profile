<%@ page import="com.practice.User" %>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<User> users = new ArrayList<>();
    users.add(new User(19384L,"Coder314","John","Smith"));
    users.add(new User(18383L,"geek12","Joe","Smith"));
    users.add(new User(19382L,"jack123","Jack","Johnson"));
    users.add(new User(19385L,"farmer-dude","Adam","Fisher"));
    request.setAttribute("users",users);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Collections and Streams</title>
    </head>
    <body>
        ${users.stream()
        .filter(u->fn:contains(u.username,'1'))
        .sorted((u1,u2)->(x=u1.lastname.compareTo(u2.lastName);x==0?u1.firstname.compareTo(u2.firstName):x))
        .map(u->{'username':u.username,'first':u.firstName,'last':u.lastName})
        .toList()}
    </body>
</html>