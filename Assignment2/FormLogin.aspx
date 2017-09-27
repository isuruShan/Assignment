<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="FormLogin.aspx.cs" Inherits="Assignment2.FormLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/StyleLogin.css" rel="stylesheet" />  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <section id="login">
        <div class="container">
    	    <div class="row">
    	        <div class="col-xs-12">
        	        <div class="form-wrap">
                    <h1 style="font-size: 40px">Log In</h1>
                       <form id="form1" runat="server">
                            <div class="form-group">
                                <label for="email" class="sr-only">Email</label>
                                <asp:TextBox ID="txtEmail" runat="server" type="email" name="email" class="form-control" placeholder="somebody@ecu.com"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="key" class="sr-only">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" type="password" name="key" class="form-control" placeholder="Password"></asp:TextBox>                             
                            </div>
                            <div class="checkbox">
                                <span class="character-checkbox" onclick="showPassword()"></span>
                                <span class="label">Show password</span>
                            </div>
                            
                            <asp:Button ID="btnLogin" runat="server" class="btn btn-custom btn-lg btn-block" Text="Log In" OnClick="btnLogin_Click" />
                        </form>                        
                        <hr>
    		    </div> <!-- /.col-xs-12 -->
    	    </div> <!-- /.row -->
        </div> <!-- /.container -->
    </section>

    
    <script>
        function showPassword() {

            var key_attr = $('#key').attr('type');

            if (key_attr != 'text') {

                $('.checkbox').addClass('show');
                $('#key').attr('type', 'text');

            } else {

                $('.checkbox').removeClass('show');
                $('#key').attr('type', 'password');

            }

        }
    </script>
</asp:Content>
