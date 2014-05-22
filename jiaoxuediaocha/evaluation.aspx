<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluation.aspx.cs" Inherits="jiaoxuediaocha.evaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        作业量<asp:Table ID="homework" runat="server" CellPadding="0" CellSpacing="0" Height="56px"
            Width="800px" BorderWidth="1px">
        </asp:Table>    
        <br />
        满意度<asp:Table ID="total" runat="server" CellPadding="0" CellSpacing="0" Height="56px"
            Width="800px" BorderWidth="1px">
        </asp:Table>    
        <br />
    </div>
    </form>
</body>
</html>
