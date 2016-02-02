<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data"%>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("session_id",
        System.Type.GetType("System.String")));
        dt.Columns.Add(new DataColumn("username",
        System.Type.GetType("System.String")));
        dt.Columns.Add(new DataColumn("login_time",
        System.Type.GetType("System.DateTime")));
        dt.Columns.Add(new DataColumn("ip_address",
        System.Type.GetType("System.String")));
        // store the DataTable as an Application variable
        Application["visitorTable"] = dt;
        
        
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
