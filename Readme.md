# How to handle a double click on appointments and time cells


<p>This example illustrates how to handle a double click on appointments and time cells. There is a simple solution in case of appointments. You just need to handle the built-in <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxSchedulerScriptsASPxClientScheduler_AppointmentDoubleClicktopic"><u>ASPxClientScheduler.AppointmentDoubleClick Event</u></a>. You might also need to set the <strong>e.handled</strong> parameter to true if it is necessary to suppress an appointment's in-place editor. <br><br></p>
<p><strong>Starting from v17.1</strong>, the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxScheduler.Scripts.ASPxClientScheduler.CellDoubleClick.event">ASPxClientScheduler.CellDoubleClick</a> event is introduced to handle a mouse double-click for a time cell. </p>
<p><br>In case of the time cells, you will need to utilize a more complex approach because there is no appropriate built-in event. Attach the <strong>dblclick</strong> event handler to the root HTML element of <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxSchedulerScriptsASPxClientSchedulertopic"><u>ASPxClientScheduler</u></a>. </p>


<h3>Description</h3>

<p>In the attached <strong>dblclick</strong>&nbsp;event handler, make sure that there are no open forms, and that internal hit info does not indicate that the event was raised when the mouse pointer was hovering over a particular appointment. In code this can be accomplished as follows:</p>
<code lang="js">ASPx.Evt.AttachEventToElement(scheduler.GetMainElement(), 'dblclick', function(evt) {

   if (scheduler.activeFormType == ASPx.SchedulerFormType.None) {

       evt = ASPx.Evt.GetEvent(evt);

	var hitTestResult = scheduler.CalcHitTest(evt);

	                    

	if (!ASPx.IsExists(hitTestResult.appointmentDiv))

	    scheduler.RaiseCallback('MNUVIEW|NewAppointment');

   }

});</code>

<br/>


