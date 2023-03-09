<%@ Page Title="" Language="C#" MasterPageFile="~/TiffinGOSite.Master" AutoEventWireup="true" CodeBehind="signupTiffinGO.aspx.cs" Inherits="TiffinGO.signupTiffinGO"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div >
          <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <p>Welcome To  TiffinGO</p>
      
      </div>
    
    
  </footer>
           <!-- End Footer -->
               <br />





           <!-- Signup page -->
           <div  class="container-fluid">
         <div class="row">
         <div class="col-md-6 mx-auto">

            <div class="card">
              <div class="card-header"> <center> <h3>Sign Up</h3></center> </div>

            <div class="card-body">
                
                 
                
                    
                
              
                 
                 <div class="row">
                 <div class="col-md-6">
                    <label>Full Name</label>
                    <div class="form-group">
                        
                        <asp:TextBox CssClass="form-control" ID="T1" runat="server" placeholder="Full Name" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name." ControlToValidate="T1" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        
                    </div>
                 </div>

                 <div class="col-md-6">
                   <label>Date of Birth</label>
                    <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="T2" runat="server" placeholder="DD/MM/YYYY" TextMode="Date" OnTextChanged="T2_TextChanged" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your birthdate." ForeColor="#FF3300" ControlToValidate="T2"></asp:RequiredFieldValidator>
                        
                    </div>

                    
                 </div>
                 </div>
                     
                  <div class="row">
                 <div class="col-md-6">
                    <label>Contact No</label>
                    <div class="form-group">
                          
                        <asp:TextBox CssClass="form-control" ID="T3" runat="server" placeholder="Contact No"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="T3" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="please enter valid mobile number." ControlToValidate="T3" ValidationExpression="[0-9]{10}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                    </div>
                 </div>

                 <div class="col-md-6">
                   <label>Email ID</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="T4" runat="server" placeholder="Email ID" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter your email ID." ControlToValidate="T4" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter valid email ID" ControlToValidate="T4" ForeColor="#FF3300" ValidationExpression="\w+([-+.&apos;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>                 
                 </div>
                 </div>
                
                     
                 <div class="row">
                 <div class="col-md-6">
                   <label>Your Profile Pic</label>
                    <div class="form-group">
                     <asp:Image ID="Image2" runat="server" Height="142px" Width="236px"></asp:Image>
                     <br>
                     <asp:Label ID="Label2" runat="server" ></asp:Label>
                     
                     
                    </div>                 
                 </div>



                 
                 <div class="col-md-6">
                   <br>
                   <br>
                        <asp:FileUpload ID="FileUpload1" runat="server" />

                        <br>
                        <br>
                        <br>
                        <asp:Button ID="But"  runat="server" BorderStyle="Solid" BorderWidth="1px" 
                    Font-Bold="True" Font-Size="Medium" Text="UPLOAD IMAGE" Width="140px" OnClick="But_Click" 
                          BackColor="#FF9900" ForeColor="White" />
                       
                        
                     
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
                        <asp:TextBox CssClass="form-control" ID="T5" runat="server" placeholder="city" ></asp:TextBox>
                    
                        </div>                 
                 </div>

                 <div class="col-md-4">
                   <label>Pin Code</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="T6" runat="server" placeholder="Pin Code" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid PIN CODE" ControlToValidate="T6" ForeColor="#FF3300" ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
                    </div>                 
                 </div>
                 </div>

                    
                 
                 <div class="row">
                 <div class="col">
                    <label>Full Address</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="T7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                     
                    </div>
                 </div>
                 </div>
                     
                <br />
                 <div class="row">
                 
                 <div class="col">
                 <center>
                   <span class="badge book-a-table-btn">Login Credentials</span>
                   </center>
                 </div>
                 
                 </div>
                     <br />

                   <div class="row">
                 <div class="col-md-6">
                    <label>User ID</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="T8" runat="server" placeholder="userid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="create your user ID" ControlToValidate="T8" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                 </div>

                 <div class="col-md-6">
                   <label>Password</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="T9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="please create your password" ControlToValidate="T9" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>                 
                 </div>
                 </div>
    
                      <div class="form-group">
                         <div class="d-grid gap-2 col-12 mx-auto">

                           <asp:Button class="btn btn-secondary btn-block btn-lg"  ID="Button2" runat="server" Text="Sign in" OnClick="Button2_Click"     />
                             <center>
                                 </center>
                        </div>
                          
               
                      </div>
                 

                 
                  </div>
             
        <a href="TiffinGOsignin.aspx"><< Back to Login Page</a>
         </div>


                 


                   

                   

                 
            </div>
            </div>
           

             
        
         </div>




           <!-- Signup page -->






               </div>
    
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</asp:Content>
