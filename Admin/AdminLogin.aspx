<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .bg {
             background:url('Images/images2.jpg' ) no-repeat;
             //background-image:url(grievance.jpg);
             width:100%;
            height:100%;
       //background-color:#e8dfec;
        }
        .box {
            background-color:aqua;
            color:blue;
            margin:30px 30px;
            -webkit-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);

             }

        img {
            width: 150px;
            margin: auto;
            
        }       
        
        label {
            color:black;
        }
   </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
               
                    <h3 class="text-center text-capitalize " >Admin LogIn</h3>
                    <hr class="w-50 mx-bold btn-primary"  />
                    <center><img style="border-radius:100%;" src="../Image/login4.jpg" /></center>
                    <div class="form-group">
                        <label>User Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="User Name"  ></asp:TextBox>

                    </div>                                                  
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="TextBox2" runat="server"  class="form-control fa fa-eye" placeholder="Password"  aria-hidden="true" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>
                    <div class="checkbox">
                        <label><input  type="checkbox" />Remember Me</label>
                    </div>
                    <div class="form-group">
                        <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/forgotpassword.aspx" >Forget Password</asp:LinkButton>
                    </div>
                    <div class="form-group">
                        
                        <asp:Button ID="bt1" runat="server" Text="LogIn" class="btn btn-block btn-primary" OnClick="bt1_Click"  />
                    </div>
                
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
        </div>
         

   </div> 
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>

    
    </form>
</body>
</html>
