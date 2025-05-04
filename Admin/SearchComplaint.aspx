<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SearchComplaint.aspx.cs" Inherits="Admin_SearchComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 300px;
        }
        /*.body {
            background-color:violet;
            margin-top:20px;
            margin-bottom:20px;
            border:2px solid black;
        }*/
        h1 {
            text-align:center;
        }
        
        .box {
            background-color:aqua;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div  class="container-fluid box ">
        <div class="row">
            <div class="col-md-4 col-ms-4 col-xs-12">
                 
            </div>
            <div class="col-md-4 col-ms-4 col-xs-12 body">
                <h3>Search Compalint By Id </h3>
                 <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">Enter ID</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server"  Text="Search" Class="btn btn-primary" OnClick="Button1_Click"  />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
               
                     
                
            <div>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Complaintid" >
                                    <Columns>
                                        <asp:BoundField DataField="Complaintid" HeaderText="Complaint Id">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Selectedquery" HeaderText="Select Query Type">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Subject" HeaderText="Subject">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                                        <asp:BoundField DataField="Query" HeaderText="Query">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Status" HeaderText="Status">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Reply" HeaderText="Reply">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />

                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                <div>
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AllReply.aspx">View all complaint</asp:LinkButton>
                    </div>
               </div>
               


            </div>
             <div class="col-md-4 col-ms-4 col-xs-12"></div>          
                       
             </div>
           
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</asp:Content>

