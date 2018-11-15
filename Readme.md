<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to handle a double click on appointments and time cells


<p>This example illustrates how to handle a double click on appointments and time cells. There is a simple solution in case of appointments. You just need to handle the built-in <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_AppointmentDoubleClicktopic"><u>ASPxClientScheduler.AppointmentDoubleClick Event</u></a>. You might also need to set the <strong>e.handled</strong> parameter to true if it is necessary to suppress an appointment's in-place editor. <br><br></p>
<p><strong>Starting from v17.1</strong>, the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxScheduler.Scripts.ASPxClientScheduler.CellDoubleClick.event">ASPxClientScheduler.CellDoubleClick</a> event is introduced to handle a mouse double-click for a time cell. </p>
<p><br>In case of the time cells, you will need to utilize a more complex approach because there is no appropriate built-in event. Attach the <strong>dblclick</strong> event handler to the root HTML element of <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxSchedulerScriptsASPxClientSchedulertopic"><u>ASPxClientScheduler</u></a>. </p>

<br/>


