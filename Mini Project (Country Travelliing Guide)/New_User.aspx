<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New_User.aspx.cs"
    Inherits="Mini_Project__Country_Travelliing_Guide_.New_User" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>| Profile Verifier , Builder |</title>
        <style type="text/css">
            @import url('https://fonts.googleapis.com/css?family=Roboto:300');

            body {
                text-align: center;

                color: #fff;
                background: linear-gradient(141deg, #ccc 25%, #eee 40%, #ddd 55%);
                color: #555;

                padding-top: 10vh;
                height: 100vh;
                -webkit-backface-visibility: hidden;
                -webkit-perspective: 1000;
                -webkit-transform: translate3d(0, 0, 0);
            }

            .Top-Header {
                display: inline-block;
                overflow: hidden;
                white-space: nowrap;
                font-family: 'Roboto';
                font-weight: 300;
                font-size: 32px;
            }


            .auto-style1 {
                width: 100%;
                padding: 30px;
                background: #97979799;
                max-width: 800px;
                padding-bottom: 15px;
            }

            .auto-style1,
            .Old-User-Panel>span {
                font-family: 'Roboto';
                font-weight: 300;
                font-size: 25px;
                border-radius: 50px;
            }

            .Old-User-Panel {
                width: 100%;
                padding: 30px;
                padding-bottom: 15px;
                background: #97979799;
                max-width: 700px;
                border-radius: 40px;
                font-family: 'Roboto';
                font-weight: 300;
                font-size: 25px;
            }

            #Button2,
            #Button3 {
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

            #Button2:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button3:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button1:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button4,
            #Button1,
            #Button5,
            #Button6,
            #Button7,
            #Button8 {
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

            .Button-Decoration {
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

            .Button-Decoration:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button4:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button5:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button6:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button7:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #Button8:hover {
                background: black;
                color: #fff;
                border-radius: 10px;
                height: fit-content;
                width: fit-content;
            }

            #TextBox1,
            #TextBox2,
            #TextBox3,
            #TextBox4,
            #TextBox5,
            #TextBox6,
            #TextBox7,
            #TextBox8,
            #TextBox9,
            #TextBox10,
            #TextBox11 {
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

            #TextBox1:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            .Compare-Text {
                font-size: 15px;
            }

            #TextBox2:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox3:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox4:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox5:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox6:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox9:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox7:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox8:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox10:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox11:hover {
                background-color: transparent;
                border-radius: 15px;
                color: black;
                width: fit-content;
                height: 40px;
            }

            #TextBox1:focus {
                outline: none;
            }

            #TextBox2:focus {
                outline: none;
            }

            #TextBox3:focus {
                outline: none;
            }

            #TextBox4:focus {
                outline: none;
            }

            #TextBox5:focus {
                outline: none;
            }

            #TextBox6:focus {
                outline: none;
            }

            #TextBox7:focus {
                outline: none;
            }

            #TextBox8:focus {
                outline: none;
            }

            #TextBox9:focus {
                outline: none;
            }

            #TextBox10:focus {
                outline: none;
            }

            #TextBox11:focus {
                outline: none;
            }

            .auto-style2 {
                width: 100%;
            }
        </style>
    </head>

    <body>

        <form id="form1" runat="server">
            <div class="Top-Header">
                <br />
                <span>
                    <h1 align="center">Select your Choice</h1>
                </span>

                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="New User? Sign up." OnClick="Button2_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Old User?Sign in." OnClick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <br />
                <br />

            </div>
            <div>
                <asp:Panel ID="Panel1" runat="server">
                    <table align="center" class="auto-style1">
                        <tr>
                            <td><span>Create Username</span></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" required placeholder="Name"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td><span>Enter - Email</span></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" required
                                    placeholder="E-Mail"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td><span>Create Password</span></td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" required
                                    placeholder="Password"></asp:TextBox>

                                <br />

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3"
                                    ControlToValidate="TextBox4" Display="Dynamic"
                                    ErrorMessage="*Confirm Password Does'nt Match" ForeColor="#FF3300"
                                    CssClass="Compare-Text"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td><span>Confirm Password</span></td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" required
                                    placeholder="Confirm Password"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Sign up." OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>

                </asp:Panel>
            </div>
            <asp:Panel runat="server" ID="Panel2">
                <table class="Old-User-Panel" align="center">
                    <tr>
                        <td><span>Enter Username</span></td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" required placeholder="Username"></asp:TextBox>

                            <br />

                            <asp:Label ID="Label1" runat="server" CssClass="Compare-Text" ForeColor="Red"
                                Text="*Incorrect Username"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td><span>Enter Password</span></td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" required
                                placeholder="Password"></asp:TextBox>

                            <br />

                            <asp:Label ID="Label2" runat="server" CssClass="Compare-Text" ForeColor="Red"
                                Text="*Incorrect Password"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button5" runat="server" Text="Forget Password." OnClick="Button5_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" Text="Sign in." OnClick="Button4_Click" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <div>
                <asp:Panel ID="Panel3" runat="server">
                    <table class="auto-style1" align="center">
                        <tr>
                            <td>Enter Username</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server" required></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>Enter&nbsp; E-Mail</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" required></asp:TextBox>
                                <br />
                                <asp:Label ID="Label3" runat="server" CssClass="Compare-Text" ForeColor="Red"
                                    Text="*Incorrect Username"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter OTP</td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label4" runat="server" CssClass="Compare-Text" ForeColor="Red"
                                    Text="*Incorrect OTP"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Button ID="Button6" runat="server" Text="Send OTP" OnClick="Button6_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button7" runat="server" Text="Verify OTP" OnClick="Button7_Click" />
                            </td>
                        </tr>
                    </table>

                </asp:Panel>
                <asp:Panel ID="Panel4" runat="server">
                    <table class="auto-style1" align="center">
                        <tr>
                            <td>

                                <table class="auto-style2">
                                    <tr>
                                        <td>Create New Password</td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" TextMode="Password">
                                            </asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Confirm New Password</td>
                                        <td>
                                            <asp:TextBox ID="TextBox11" runat="server" TextMode="Password">
                                            </asp:TextBox>
                                            <br />
                                            <asp:CompareValidator ID="CompareValidator2" runat="server"
                                                ControlToCompare="TextBox10" ControlToValidate="TextBox9"
                                                CssClass="Compare-Text" Display="Dynamic"
                                                ErrorMessage="*Confirm Password Does'nt Match" ForeColor="#FF3300">
                                            </asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button9" runat="server" Text="Button"
                                                CssClass="Button-Decoration" OnClick="Button9_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button8" runat="server" Text="Update Password"
                                                OnClick="Button8_Click" />
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
        </form>


    </body>

    </html>