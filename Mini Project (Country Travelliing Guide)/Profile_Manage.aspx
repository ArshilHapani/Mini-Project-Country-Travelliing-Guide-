<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile_Manage.aspx.cs" Inherits="Mini_Project__Country_Travelliing_Guide_.Profile_Manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
              background: linear-gradient(141deg, #ccc 25%, #eee 40%, #ddd 55%);
              background-size:cover;
              background-repeat:no-repeat;
              height:93vh;
              overflow:hidden;
        }
        #Top-Text{             
                overflow: hidden;
                white-space: nowrap;
                font-family: 'Roboto';
                font-weight: 300;
                font-size: 32px;
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
        .auto-style1 {
            width: 100%;
            
        }
        #FeedBack{
            resize:none;
        }
        .Button-Design-Main{
                padding: 20px;
                font-size: 20px;
                border-style: none;
                border-radius: 10px;
                background: #b4b2b2c5;
                transition: .5s ease-out;
                height: fit-content;
                width: fit-content;
                cursor: pointer;
        }
        .Button-Design-Main:hover{
              background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
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
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            color: black;
            border-radius: 5px;
            transition-property: background-color, border-radius, width, height, color;
            transition-duration: 0.215s;
            transition-delay: 0.215s;
            text-align: center;
            border-bottom: 1px solid black;
            font-family: 'Raleway', sans-serif;
            background-color: transparent;
            transition: .215s ease-in;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" align="center">
        <div>

           <p id="Top-Text" align="center"> Manage Profile.</p>
            <p align="center"> &nbsp;</p>
            <p align="center"> 
                <asp:Button ID="UserName_Update" runat="server" Text="Update Username" CssClass="Button-Design-Main" OnClick="UserName_Update_Click" />
&nbsp;<asp:Button ID="E_MailUpdate" runat="server" Text="Update E-Mail" CssClass="Button-Design-Main" OnClick="E_MailUpdate_Click" />
&nbsp;
                <asp:Button ID="DeleteProfile" runat="server" Text="Delete Account" CssClass="Button-Design-Main" OnClick="DeleteProfile_Click" />
            </p>
            <p align="center"> &nbsp;</p>
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1 Table-Design" align="center">
                    <tr>
                        <td>Enter Old Username:</td>
                        <td>
                            <asp:TextBox ID="OldUserName" runat="server" CssClass="TextBox-Styling" placeholder="Old Username"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter New Username:</td>
                        <td>
                            <asp:TextBox ID="Name_Textbox" runat="server" CssClass="TextBox-Styling" placeholder="New Username"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Update Username" CssClass="Button-Design" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <table class="auto-style1 Table-Design" align="center">
                    <tr>
                        <td class="auto-style2">Enter Old E-Mail:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBox-Styling" placeholder="Old E-Mail"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Enter New E-Mail:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="E_Mail_Textbox" runat="server" CssClass="TextBox-Styling" placeholder="New E-Mail" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Update E-Mail" CssClass="Button-Design" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style1 Table-Design" align="center">
                <tr>
                    <td>Enter Username:</td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="TextBox-Styling" placeholder="Username" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Reason to Delete Account?</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="FeedBack" runat="server" CssClass="auto-style3" Height="48px"  TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Submit Feedback and Delete Account" CssClass="Button-Design" OnClick="Button3_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
