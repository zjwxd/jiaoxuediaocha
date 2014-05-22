<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="jiaoxuediaocha.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:500px;margin:50px auto;font-size:24px;">
    
        <div style="width:500px;text-align:center;font-size:40px;">教 学 评 价 系 统</div>
        <div style="width:300px;margin:30px auto;line-height:48px;">
            学号：<asp:TextBox ID="xuehao" runat="server" Font-Size="24px" Width="120px"></asp:TextBox>
            <br />
            姓名：<asp:Label ID="name" runat="server"></asp:Label>
            <br />
            <div style="text-align:center;">
                <asp:Button ID="xuehao_submit" runat="server" OnClick="xuehao_submit_Click" Text="确定" Font-Size="24px" />
                &nbsp;&nbsp;
                <asp:Button ID="reset" runat="server" OnClick="reset_Click" Text="重置" Font-Size="24px" />
                <br />
                <asp:Button ID="enter" runat="server" Enabled="False" Text="开始" Font-Size="24px" OnClick="enter_Click" Visible="False" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
