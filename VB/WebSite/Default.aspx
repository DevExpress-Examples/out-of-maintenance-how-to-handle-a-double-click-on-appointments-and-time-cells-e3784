<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v15.2, Version=15.2.0.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4"
	Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>
<%@ Register Assembly="DevExpress.XtraScheduler.v15.2.Core, Version=15.2.0.0, Culture=neutral, PublicKeyToken=79868b8147b5eae4"
	Namespace="DevExpress.XtraScheduler" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" ClientInstanceName="scheduler"
			OnAppointmentInserting="ASPxScheduler1_AppointmentInserting">
			<ClientSideEvents 
			Init="function(s, e) {
				ASPx.Evt.AttachEventToElement(scheduler.GetMainElement(), 'dblclick', function(evt) {
	                if (scheduler.activeFormType == ASPx.SchedulerFormType.None) {
	                    evt = ASPx.Evt.GetEvent(evt);
	                    var hitTestResult = scheduler.CalcHitTest(evt);
	                    
	                    if (!ASPx.IsExists(hitTestResult.appointmentDiv))
	                        scheduler.RaiseCallback('MNUVIEW|NewAppointment');
	                }
				});
			}"
			AppointmentDoubleClick="function(s, e) {
				scheduler.RaiseCallback('MNUAPT|OpenAppointment');
				e.handled = true;
			}" />
		</dxwschs:ASPxScheduler>
	</div>
		<asp:ObjectDataSource ID="appointmentDataSource" runat="server" DataObjectTypeName="CustomEvent"
			TypeName="CustomEventDataSource" DeleteMethod="DeleteMethodHandler" SelectMethod="SelectMethodHandler" InsertMethod="InsertMethodHandler" UpdateMethod="UpdateMethodHandler" OnObjectCreated="appointmentsDataSource_ObjectCreated"/>
	</form>
</body>
</html>