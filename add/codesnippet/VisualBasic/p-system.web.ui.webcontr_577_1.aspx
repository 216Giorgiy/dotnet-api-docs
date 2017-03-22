<%@ Page Language="VB" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Calendar Example</title>
<script language="VB" runat="server">
        Sub Selection_Change(sender As Object, e As EventArgs)
            Label1.Text = "The selected date(s):" & ChrW(60) & "br" & ChrW(62)
            Dim i As Integer
            For i = 0 To Calendar1.SelectedDates.Count - 1
                Label1.Text &= Calendar1.SelectedDates(i).ToShortDateString() & ChrW(60) & "br" & ChrW(62)
            Next i
        End Sub 'Selection_Change 
   </script>
</head>     
<body>

   <form id="form1" runat="server">

      <h3>Calendar Example</h3>

      Select date(s) on the Calendar control.<br /><br />

      <asp:Calendar ID="Calendar1" runat="server"  
           SelectionMode="DayWeekMonth" 
           ShowGridLines="True" 
           OnSelectionChanged="Selection_Change">

         <SelectedDayStyle BackColor="Yellow"
                           ForeColor="Red">
         </SelectedDayStyle>

      </asp:Calendar>  

      <hr /><br />

      <asp:Label id="Label1" runat="server" />

   </form>
</body>
</html>