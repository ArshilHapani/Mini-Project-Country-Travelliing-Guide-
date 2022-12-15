<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_Form.aspx.cs" Inherits="Mini_Project__Country_Travelliing_Guide_.Contact_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
              background: linear-gradient(141deg, #ccc 25%, #eee 40%, #ddd 55%) no-repeat;
              background-size:cover;
              height:100vh;
              overflow:hidden;

        }
        .auto-style1 {
            width: 100%;
        }
         .Table-Design{
              width: 100%;
                padding: 30px;
                background: #97979799;
                max-width: 800px;
                padding-bottom: 15px;
                   font-family: 'Roboto';
                font-weight: 300;
                font-size: 25px;
                border-radius: 50px;
                
        }
             .Button-Design{
                padding: 15px;
                font-size: 20px;
                border-style: none;
                border-radius: 10px;
                background: transparent;
                transition: .5s ease-out;
                height: fit-content;
                width: fit-content;
                cursor: pointer;
                margin-top: 15px;
        }
        .Button-Design:hover{
              background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
        }
        .TextBox-Styling{
               color: black;
                width: fit-content;
                height: 40px;
                border-radius: 5px;
                transition-property: background-color, border-radius, width, height, color;
                transition-duration: 0.215s;
                transition-delay: 0.215s;
                text-align: center;
                border: none;
                border-bottom: 1px solid black;
                font-family: 'Raleway', sans-serif;
                background-color: transparent;
                transition: .215s ease-in;
        }
        .TextBox-Styling:hover{
              background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
        }
        #TextBox3{            
            max-width:30vh;
            max-height:38vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" align="center">
        <div>
            <h1 align="center">Contact us.</h1>
            <p align="center">We like to hear from you :)</p>
            <p align="center">&nbsp;</p>
            <table class="auto-style1 Table-Design" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBox-Styling"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>E-Mail</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" CssClass="TextBox-Styling"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Message</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="TextBox-Styling"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="Button-Design" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
