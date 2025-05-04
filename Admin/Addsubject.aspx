<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Addsubject.aspx.cs" Inherits="Admin_Addsubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <style type="text/css">
         .body {
             background-color:blueviolet;
             border:2px solid black;
             margin-top:20px;
            margin-bottom:20px;
        
        }
        .box {
            background-color:aquamarine;
            }
        h1 {
            text-align:center;
        }
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container-fluid box">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
              
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h1>Add Subject </h1>

               <form>
                     <div class="form-group">
                         <asp:Label ID="Label1" runat="server" Text="Label">Subject Id</asp:Label>
                         <asp:TextBox ID="TextBox1" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                         </div>
                   <div class="form-group">
                       <asp:Label ID="Label2" runat="server" Text="Label">Subject Name</asp:Label>
                         <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                       </div>
                   <div class="form-group">
                       <asp:Label ID="Label3" runat="server" Text="Label">Query ID</asp:Label>
                         <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                       </div>
                    <div class="form-group">
                       <asp:Button ID="btn" runat="server" Text="Save"  class="btn-block btn-primary" OnClick="btn_Click"  />
                   </div>
                   <div class="form-group">
                       <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                   </div>
               </form>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12">
               
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>

</asp:Content>

