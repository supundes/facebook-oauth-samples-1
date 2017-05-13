<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="com.google.gson.GsonBuilder" %>
<%@ page import="com.tharindu.oauth.facebookapp.data.ResourceDataHolder" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>What's your status update ?</title>
</head>
<body>

<%

    //Retrieve the query parameter 'key' received in the URL
    String key = (String) request.getParameter("key");

%>

<form action="/facebookapp/callback" method="post">

    <h1>Enter your message here</h1>
    <br>
    <textarea id="usermessage" name="usermessage" value="" rows="4" cols="50"></textarea>
    <br>

    <input type="hidden" name="key" id="key" value="<%=key%>"/>


    <input type="submit" value="Send"/>

</form>


</body>
</html>
