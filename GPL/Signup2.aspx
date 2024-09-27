<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup2.aspx.cs" Inherits="GPL.Signup2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" />
    <title></title>
    <style>
        center{
            align-items:center;
            justify-content:center;
        }
        .auto-style1 {
            margin-left: 0px;
        }
        .Btncls{
            background-color:orangered;
            border-color:aqua;
            border-style:groove;
            text-align: center;
            border-radius:15px;
        }
        .Btncls:hover{
            background-color:green;
        }
        .BTcontainer{
            text-align: center;
        }

        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <table>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Login"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Width="175px">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>    
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Login ID"></asp:Label></td>
                    <td><asp:TextBox  ID="TextBox1" runat="server" Enabled="false"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox5" runat="server" Type="Password"></asp:TextBox>
                    <span  style="cursor:pointer">
                    <i ID="eye" class='bx bxs-show' onclick="togglePassword()"></i>
                    </span>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="PassMessage" runat="server" ForeColor="Red" BackColor="#FFFF99"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label></td>
                    <td><asp:TextBox  ID="TextBox4" runat="server"  Type="Password"></asp:TextBox>
                    <span  style="cursor:pointer">
                    <i ID="Ceye" class='bx bxs-show' onclick="togglePasswordC()"></i>
                    </span>                  
                    </td>
                </tr>
                <tr class="BTcontainer">
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Save" class="Btncls" Font-Names="btn" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Cacel" class="Btncls" Font-Names="btn" OnClick="CancelBtn_Click" />
                    </td>
                </tr>
            </table>
        </div>
        </center>
       <%-- <div>
            <asp:Label ID="Label2" runat="server" Text="Login"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" Width="175px">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:DropDownList>    
        </div>--%>
       <%-- <div>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Type="Password"></asp:TextBox>
            <i class='bx bxs-show'></i>
        </div>--%>
     <%--   <div>
            <asp:Label ID="PassMessage" runat="server" Text=""></asp:Label>
        </div>--%>
        <%--<div>
            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox  ID="TextBox4" runat="server" Type="Password"></asp:TextBox>
            <i class='bx bxs-show'></i>
        </div>--%>
        <%--<div>
            <asp:Button ID="Button1" runat="server" Text="Save" BackColor="#FF99FF" BorderColor="#66FFFF" BorderStyle="Groove" Font-Names="btn" OnClick="Button1_Click" />
        </div>--%>
    </form>
</body>
    <script>
        debugger
        function togglePasswordC(obj)
        {
            //alert('rrr');
            debugger;
            var passwordInput = document.getElementById("TextBox4");
            var eyehidec=document.getElementById("Ceye");
            if (passwordInput.type === "password")
            {
                passwordInput.type = "text";                
                eyehidec.className="bx bxs-hide"
                
            }
            else
            {
                passwordInput.type = "password";
                eyehidec.className="bx bxs-show"
            }
        }

        function togglePassword(obj)
        {
            //alert('rrr');
            debugger;
            var pass = document.getElementById("TextBox5");
            var eyehide = document.getElementById("eye");

            if (pass.type === "password") {
                pass.type = "text";
                eyehide.className = "bx bxs-hide"

            }
            else {
                pass.type = "password";
                eyehide.className = "bx bxs-show"
            }
        }
    </script>
</html>
