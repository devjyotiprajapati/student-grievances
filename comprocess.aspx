<%@ Page Title="" Language="C#" MasterPageFile="~/Afterlogin.master" AutoEventWireup="true" CodeFile="comprocess.aspx.cs" Inherits="comprocess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .bg {
            background-color:burlywood;
            border:groove;
        }
        .box {
            color:deeppink;
        }
        .body {
            border:medium 2px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="box"><marquee>Welcome to our Online Grievance System  <b><u>100 % Trusted</u></b></marquee></div>
    <hr />
    <div  class="container-fluid bg ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12"> <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/grievance.jpg" Width="300" Height="1000" /></div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h2 class="text-center text-capitalize">Online Grievance System</h2>
                <hr class="w-75 mx-auto btn-success"/>
                <div class="form-group" >
                    <asp:Label ID="Label14" runat="server" Text="Complaint ID"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                    
                  </div>
                
                <div class="form-group" >
                    <asp:Label ID="Label1" runat="server" Text="Select query"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                    
                  </div>
                <div class="form-group">
                     <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Class="form-control" ReadOnly="True"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                     <asp:Label ID="Label3" runat="server" Text="Regional center"></asp:Label>
                   <asp:TextBox ID="TextBox3" runat="server" Class="form-control" Text="07" ReadOnly="True"></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label4" runat="server" Text="Enrolment No"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"  Class="form-control" ></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label5" runat="server" Text="Student Name"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" Class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label6" runat="server" Text="Programe Name"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" Class="form-control">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>BCOM</asp:ListItem>
                        <asp:ListItem>BSC</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>Btech</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>Mtech</asp:ListItem>
                        <asp:ListItem>MPhil</asp:ListItem>
                        <asp:ListItem>MCom</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>MSC</asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label7" runat="server" Text="Email-Id"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Email" Class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label8" runat="server" Text="Mobile NO"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Phone" Class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label9" runat="server" Text="Query"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Class="form-control"></asp:TextBox>
                </div>
                <div class="form-group">

                     <asp:Label ID="Label10" runat="server" Text="Upload File"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </div>
               <div> <asp:Label ID="Label11" runat="server" Text="*Please Upload jpg/doc/pdf and file size max 2MB" ForeColor="Red"></asp:Label></div>

                
                <asp:Button ID="Button1" runat="server" Text="Submit" class="btn  btn-success" OnClick="Button1_Click"  /><asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-danger"  />
                <asp:Button ID="Button3" runat="server" Text="Back" class="btn btn-primary"  PostBackUrl="~/Complaint.aspx" />
             </div>

            <div class="form-group">
                 <asp:Label ID="Label13" runat="server" Text="Label" Visible="False" ></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>
             <div class="col-md-4 col-ms-4 col-xs-12"> 
                 </div>
       </div>
    </div> 
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

