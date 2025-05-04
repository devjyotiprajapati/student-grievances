<%@ Page Title="" Language="C#" MasterPageFile="~/Beforelogin.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .body {
            background-color:cornflowerblue;
            border:2px solid black;
            margin-top:20px;
            color:white;
            margin-bottom:20px;
        }
        
        .img {
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
         <div class="row body">
             <div class="col-md-4 col-ms-4 col-xs-12">
                <img src="Image/About-Us.png" class="rounded float-left img" alt="..." height="300" width="300"/>
            </div>
          <div class="col-md-4 col-ms-4 col-xs-12">  
        <h3 class="text-center text-capitalize">About Oure Grievance Portal</h3>
        <hr class="w-25 mx-auto"/>
    
    
        
        <p class="text-center text-capitalize" >Dear Learnar, <br /></p>
              <p> Online grievance management portal make it easier for student to find solution of their queries.</p>
              <p>This portal help us to register complaint and track complaint status.</p>
              <p>The facility to upload document and screenshort fils is also available. 
           
        </p>
</div>
               <div class="col-md-4 col-ms-4 col-xs-12">
            <img src="Image/about.png" class="rounded float-left img" alt="..." height="300" width="300"/>
            </div>
            </div>
    
         </div>
     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

