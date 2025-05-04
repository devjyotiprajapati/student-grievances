<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyMaster.master" AutoEventWireup="true" CodeFile="Reply.aspx.cs" Inherits="Reply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/ >
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .bg {
             //background:url('Images/images2.jpg' ) no-repeat;
             width:100%;
            height:100%;
       background-color:#e8dfec;
        }
        .box {
            //background-color:aqua;
            color:blue;
            margin:30px 30px;
            -webkit-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
-moz-box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);
box-shadow: -5px 2px 62px 9px rgba(0,0,0,0.75);

             }

        img {
            width: 150px;
            margin: auto;
            padding-bottom:20px;
            padding-top:8px;
            
        }       
        
        label {
            color:black;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid bg"> 
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12" >
                
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 box" >
                <form >
                    <h3 class="text-center text-capitalize " >Reply</h3>
                    <hr class="w-50 mx-bold btn-primary"  />
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Complaint Id"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"  ></asp:TextBox>
                    </div>  
                   
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Enrollment No"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control"  ></asp:TextBox>
                    </div>  
                     <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Selected Query Type"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control"   ></asp:TextBox>
                    </div>                                                  
                                                                    
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Subject"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" class="form-control"   ></asp:TextBox>
                    </div>                                                  
                      <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Student Name"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control"  ></asp:TextBox>
                    </div>    
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Email id"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" class="form-control"   ></asp:TextBox>
                    </div>                                                  
                      <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Query"></asp:Label>
                        <asp:TextBox ID="TextBox7" runat="server" class="form-control"   ></asp:TextBox>
                    </div>                                                  
                      <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Status"></asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" class="form-control"  ></asp:TextBox>
                    </div>                                                  
                      <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="Reply"></asp:Label>
                        <asp:TextBox ID="TextBox10" runat="server" class="form-control"   ></asp:TextBox>
                    </div>   
                     <div class="form-group">                        
                        <asp:Button ID="bt1" runat="server" Text="Submit" class="btn btn-block btn-primary" OnClick="bt1_Click"  />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label13" runat="server" visible="false"></asp:Label>
                    </div>
                </form>
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12" ></div>
        </div>
         

   </div> 
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>


</asp:Content>

