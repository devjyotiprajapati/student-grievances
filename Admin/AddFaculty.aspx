<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddFaculty.aspx.cs" Inherits="Admin_AddFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
         .body {
             background-color:violet;
            
 
             margin-top:20px;
            margin-bottom:20px;
                  border:solid black 2px;
                  color:blue;
           
        }
         

        .box {
            background-color:aquamarine;

            }
        h1 {
            text-align:center;
            color:blue;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
          border:solid black 2px;
            
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div  class="container-fluid  box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12"> </div>
            <form >
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1><u><b>Add New Faculty</b></u></h1>               
                   <div class="form-group">
                         <asp:Label ID="Label1" runat="server" Text="Label">Faculty ID</asp:Label>
                         <asp:TextBox ID="TextBox1" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                     </div>
                   <div class="form-group">
                         <asp:Label ID="Label2" runat="server" Text="Label">Name</asp:Label>
                         <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                     </div>
                     <div class="form-group">
                         <asp:Label ID="Label3" runat="server" Text="Label"> User Name</asp:Label>
                         <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                       <asp:Label ID="Label4" runat="server" Text="Label">Department ID</asp:Label>
                         <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                       <asp:Label ID="Label5" runat="server" Text="Label">Email-ID</asp:Label>
                         <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                       <asp:Label ID="Label6" runat="server" Text="Label">Gender</asp:Label>
                         <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="Female" />
                     </div>  
                   <div class="form-group">
                       <asp:Label ID="Label7" runat="server" Text="Label">Mobile-No</asp:Label>
                         <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                         <asp:Label ID="Label8" runat="server" Text="Label">Address</asp:Label>
                         <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                         <asp:Label ID="Label9" runat="server" Text="Label">Status</asp:Label>
                         <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                         <asp:Label ID="Label10" runat="server" Text="Label">Add on Date</asp:Label>
                         <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
                     </div>
                   <div class="form-group">
                       <asp:Button ID="btn" runat="server" Text="Save"  class="btn-block btn-primary" OnClick="btn_Click" />
                   </div>
                   <div class="form-group">
                       <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                       <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                   </div>
                   <asp:Literal ID="Literal1" runat="server" Visible="False"></asp:Literal>
               </form>
            </div>
       
            <div class="col-md-4 col-ms-4 col-xs-12">              
            </div>
       
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>

</asp:Content>

