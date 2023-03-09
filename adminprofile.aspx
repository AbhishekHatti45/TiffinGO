<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="TiffinGO.adminprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <div  class="container-fluid"  >
  <div class="card-header">My Profile</div>
  <div class="card">
  <div class="card-body">
  

  <div  class="container-fluid">
         <div class="row">
         <div class="col-md-6 mx-auto">

            <div class="card">
            
   <div class="card border-black">
            <div class="card-body">
                
                 

                 <div class="row">
                 <div class="col">
                    <center>
                        <asp:Image ID="Image2" class="img-container-fluid" runat="server" Height="168px" Width="236px"></asp:Image>
                        <br>
                        <asp:Label ID="Label2" runat="server" ></asp:Label>
                    </center>
                 </div>
                 </div>

                 <div class="row">
                 <div class="col">
                    <center>
                        <hr />
                    </center>
                 </div>
                 </div>

                 <div class="row">
                 <div class="col-md-6">
                    <label>Full Name</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="Full Name"></asp:TextBox>
                       
                    </div>
                 </div>

                 <div class="col-md-6">
                   <label>Date of Birth</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="DD/MM/YYYY" ></asp:TextBox>
                  
                   
                    </div>

                    
                 </div>
                 </div>

                  <div class="row">
                 <div class="col-md-6">
                    <label>Contact No</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox3" runat="server" placeholder="Contact No"></asp:TextBox>
                       
                    </div>
                 </div>

                 <div class="col-md-6">
                   <label>Email ID</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox4" runat="server" placeholder="Email ID" ></asp:TextBox>
                        
                       
                    </div>                 
                 </div>
                 </div>


                   <div class="row">
                 <div class="col-md-4">
                    <label>State</label>
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Chandigarh</asp:ListItem>
        <asp:ListItem>Chattisgarh</asp:ListItem>
        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
        <asp:ListItem>Daman and Diu</asp:ListItem>
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Haryana</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
        <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Lakshadweep</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Manipur</asp:ListItem>
        <asp:ListItem>Meghalaya</asp:ListItem>
        <asp:ListItem>Mizoram</asp:ListItem>
        <asp:ListItem>Nagaland</asp:ListItem>
        <asp:ListItem>Orissa</asp:ListItem>
        <asp:ListItem>Pondicherry</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Tamil Nadu</asp:ListItem>
        <asp:ListItem>Tripura</asp:ListItem>
        <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>Uttaranchal</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
                               
                        </asp:DropDownList>
                    </div>
                 </div>

                 <div class="col-md-4">
                   <label>City</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox6" runat="server" placeholder="city" ></asp:TextBox>
                    </div>                 
                 </div>

                 <div class="col-md-4">
                   <label>Pin Code</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox7" runat="server" placeholder="Pin Code" ></asp:TextBox>
                       
                    </div>                 
                 </div>
                 </div>


                 
                 <div class="row">
                 <div class="col">
                    <label>Full Address</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                       
                    </div>
                 </div>
                 </div>


                 <div class="row">
                 
                 <div class="col">
                 <center>
                   <span class="badge rounded-pill bg-info">Login Credentials</span>
                   </center>
                 </div>
                 
                 </div>


                   <div class="row">
                 <div class="col-md-4">
                    <label>User ID</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox8" runat="server" ReadOnly="True" placeholder="User ID"></asp:TextBox>
                        
                    </div>
                 </div>

                 <div class="col-md-4">
                   <label> Old Password</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox9" runat="server" 
                            placeholder="Password" ReadOnly="True" TextMode="Password"></asp:TextBox>
                        
                    </div>                 
                 </div>

                 <div class="col-md-4">
                   <label>Password</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox10" runat="server" placeholder=" New Password" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ENER NEW PASSWORD" ControlToValidate="Textbox10"></asp:RequiredFieldValidator>
                    </div>                 
                 </div>

                 </div>

                   <br />

                 <div class="row">
                 <div class="col">
                  

                 <div class="form-group">
                      <center> <asp:Button class="btn btn-info btn-block " 
                            ID="Button2" runat="server" Text="Update" OnClick="Button2_Click"  /></center> 
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                          
                    </div> 
                    
                  

                 </div>
                 </div>
            </div>
            </div>

            </div>
             <a href="adminhome.aspx"><< Back to home Page</a>
         </div>
         </div>
         </div>


  </div>
  </div>
  </div>
</asp:Content>
