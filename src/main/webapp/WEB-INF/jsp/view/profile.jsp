<%--@elvariable id="user" type="com.wrox.User"--%>
<html>
    <head>
        <title>User Profile</title>
    </head>
    <body>
        User ID:${user.userId}<br/>
        Username:${user.username}(${user.username.length()}characters)<br/>
        Full Name:${fn:excapXml(user.lastName)+=', ' += fn:excapeXml(user.firstName)}
        <br/><br/>
        <b>Permissions (${fn:length(user.permissions)})</b><br/>
        User:${user.permissions["user"]}<br/>
        Moderator:${user.permissions["moderator"]}<br/>
        Administrator:${user.permissions["admin"]}<br/>
    </body>
</html>