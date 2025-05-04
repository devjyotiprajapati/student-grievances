<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Adminhome.aspx.cs" Inherits="Admin_Adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
                    
            
       
    .body {
        background-color:aqua;
        border: solid black 2px;
        
    }
    .bod {
        //background-color:aqua;
        
        -webkit-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);

    }
    .box {
background-color:#e8dfec;
color:blue;
    }
    .bg {
        //background:url('../Images/wallpaper2.jpg') no-repeat;
        background-color:#d4d4e3;
        width:100%;
        height:100%;
    }

    .auto-style4 {
        width: 100%;
    }
</style>
    <style type="text/css">
        .auto-style4 {
            width: 89px;
        }
        .auto-style5 {
        width: 100%;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <marquee><b><i><font color="Blue">Welcome in Jyoti University</font></i></b></marquee>
    </div>
    <div class="form-group   box">
        <div class="btn-group " role="group" aria-label="Basic example">
            <div>

                <table class="auto-style4 ">
                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:LinkButton ID="LinkButton8" runat="server" type="button" Class="btn btn-outline-Info" PostBackUrl="~/Admin/AddFaculty.aspx" Width="275px">Add Faculty</asp:LinkButton></td>
                        <td> <asp:LinkButton ID="LinkButton9" runat="server" Class="btn btn-outline-Info" PostBackUrl="~/Admin/Addsubject.aspx" Width="258px">Add Subject</asp:LinkButton></td>
                        <td> <asp:LinkButton ID="LinkButton10" runat="server" Class="btn btn-outline-Info" PostBackUrl="~/Admin/Addquery.aspx" Width="212px">Add Query Type</asp:LinkButton></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>

            </div>
           
         </div>
        <div class="body">
            
             
        
                 <table class="auto-style5">
                     <tr>
                         <td>
                             <asp:LinkButton ID="LinkButton11" runat="server" PostBackUrl="~/Admin/ManageDepartment.aspx">Manage Department</asp:LinkButton>
                         </td>
                         <td>
                             <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/Admin/ManageFaculty.aspx">Manage Faculty</asp:LinkButton>
                         </td>
                         <td>
                             <asp:LinkButton ID="LinkButton13" runat="server" PostBackUrl="~/Admin/Managestudent.aspx">Manage Students</asp:LinkButton>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:LinkButton ID="LinkButton14" runat="server" PostBackUrl="~/Admin/SearchComplaint.aspx">Search Compalints</asp:LinkButton>
                         </td>
                         <td>&nbsp;</td>
                         <td>&nbsp;</td>
                     </tr>
                 </table>
            
             
        
                 </div>
   
        
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>


</asp:Content>

