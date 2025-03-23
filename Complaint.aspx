<%@ Page Title="" Language="C#" MasterPageFile="~/Afterlogin.master" AutoEventWireup="true" CodeFile="Complaint.aspx.cs" Inherits="Home" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
            <div class="col-md-4 col-ms-4 col-xs-12"> <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/grievance.jpg" Width="300" Height="300" /></div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <asp:LinkButton ID="LinkButton1" runat="server" Class="text-left " PostBackUrl="~/StatusCheck.aspx">Track Complaint status</asp:LinkButton>
                <h2 class="text-center text-capitalize">Online Grievance System</h2>
                <hr class="w-50 mx-auto btn-success"/>
                <div class="form-group" >
                    <asp:Label ID="Label1" runat="server" Text="Select query"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                     <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Class="form-control"></asp:DropDownList>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Next" class="btn btn-block btn-success"  PostBackUrl="~/comprocess.aspx" OnClick="Button1_Click" />
             </div>
             <div class="col-md-4 col-ms-4 col-xs-12"> 
                 <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/grievance2.jpg" Width="300" Height="300" />
             </div>
       </div>
    </div> 
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

