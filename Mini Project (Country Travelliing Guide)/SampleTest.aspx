<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleTest.aspx.cs" Inherits="Mini_Project__Country_Travelliing_Guide_.SampleTest" %>

<!DOCTYPE html>  
<html  
    xmlns="http://www.w3.org/1999/xhtml">  
    <head id="Head1" runat="server">  
        <title>Email Send Sample</title>  
        <link href="bootstrap.min.css" rel="stylesheet" />  
    </head>  
    <body>  
        <form id="form1" runat="server">  
            <div class="container">  
                <div class="row">  
                    <div class="col-md-4 col-md-offset-4">  
                        <div class="panel panel-primary">  
                            <div class="panel-heading">  
                                <h3 class="panel-title">Send Email Sample</h3>  
                            </div>  
                            <div class="panel-body">  
                                <label>Name</label>  
                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>  
                                <br />  
                                <label>Subject</label>  
                                <asp:TextBox ID="txtbody" runat="server" CssClass="form-control" placeholder="Subject"></asp:TextBox>  
                                <br />  
                                <label>Email(xyz@abc.com</label>  
                                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>  
                                <br />  
                                <br />  
                                <asp:Button ID="Button1" runat="server" Text="Send Email" CssClass="btn btn-block btn-primary" OnClick="Button1_Click" />  
                                <asp:Button ID="Button2" runat="server" Text="Send Email from Godaddy" CssClass="btn btn-block btn-primary" OnClick="Button2_Click" />  
                                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </form>  
    </body>  
</html>  