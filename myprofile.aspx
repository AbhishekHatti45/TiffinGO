<%@ Page Title="" Language="C#" MasterPageFile="~/customerTiffinGO.Master" AutoEventWireup="true" CodeBehind="myprofile.aspx.cs" Inherits="TiffinGO.myprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <footer id="footer">
    <div class="container">
      <p>-</p>
      
      </div>
    
    
  </footer><!-- End Footer -->
               <br />
      <div  class="container-fluid"  >
  
 
  

  <div  class="container-fluid">
         <div class="row">
         <div class="col-md-5">

          <div class="card-header container-fluid card text-dark bg-light">My Profile</div>
            
   
            <div class="card-body">
                
                 

                 



               
                 <div class="row">
                 <div class="col"> 
                    <center>
                    <asp:Image ID="Image2" runat="server" Height="136px" Width="204px"  ></asp:Image>
                
                     <br />
                        <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Bold="True"></asp:Label></center>
                    
                 </div>
                 </div>
                    
                <hr />






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
                            ID="Button2" runat="server" Text="Update" OnClick="Button2_Click1"  /></center> 
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                          
                    </div> 
                    
                  

                 </div>
                 </div>
            </div>
          

            
             <a href="c_home.aspx"><< Back to home Page</a>
         </div>
             <div class="col-md-7">
                 
          <div class="card-header container-fluid card text-dark bg-light">My Subscriptions</div><br />
                 
      <asp:GridView ID="GridView1" class="table table-striped  table-bordered " runat="server" DataSourceID="SqlDataSource1"   AutoGenerateColumns="False">
          <Columns>
              <asp:TemplateField>

                  <ItemTemplate>



                      
                                 <div class="container-fluid">
                                     <div class="row">
                                         <div class="col-lg-10">

                                             <div class="row">
                                                 <div class="col-10">
                                                     <asp:Label ID="Label1" runat="server"  Font-Bold="True" ForeColor="#FF9900" Text='<%# Eval("SubscriptionType") %>'></asp:Label>
                                                     
                                                 </div>
                                                 <div class="col-2">
                                                         <asp:Label ID="Label3" runat="server"  Font-Bold="True" Font-Italic="True" Text='<%# Eval("status") %>'></asp:Label>
                                                
                                                     
                                                 </div>
                                             </div>
                                               <div class="container-fluid">

                                            <hr>

                                        </div>
                                                <div class="row">
                                                 <div class="col-6">
                                                     <asp:Label ID="Label7" runat="server" Text="Subscription Started ON:" ForeColor="Black" Font-Size="Medium" Font-Underline="True"></asp:Label>
                                                     <br />
                                                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("StartDate") %>'></asp:Label>
                                                  </div>
                                                     <div class="col-6">
                                                         <asp:Label ID="Label8" runat="server" Text="Subscription will END ON:" ForeColor="Black" Font-Size="Medium" Font-Underline="True"></asp:Label>
                                                     <br />
                                                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("EndDate") %>'></asp:Label>
                                                  </div>

                                             </div>
                                              <div class="container-fluid">

                                            <hr>

                                        </div>
                                                <div class="row">
                                                    <div class="col-4">
                                               
                                                        
                                                    </div>
                                                 <div class="col-4">
                                                     Price&nbsp;
                                                     <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#FF9900" Text='<%# Eval("price") %>'></asp:Label>
                                                     -/RS</div>
                                                
                                             </div>

                                         </div>
                                         <div class="col-lg-2">
                                             <br/>
                                             
                                                <div class="row"><center>
                                                    <div class="col"><a href='<%# Eval("image") %>' class="gallery-lightbox">
                                             <asp:Image Class="img-fluid" alt="" ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>'  /></a>
                                             
                                                        </a><br/>
                                             <asp:Label ID="Label9" runat="server" Text='<%# Eval("foodtype") %>'></asp:Label>
                                                        </div>
                                                    </center>
                                                </div>
                                         </div>
                                     </div>
                                        <div class="container-fluid">

                                            <hr>

                                        </div>
                                 </div>





                  </ItemTemplate>




              </asp:TemplateField>
          </Columns>
      </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand="SELECT * FROM [userorderview] WHERE ([user_id] = @user_id)">
          <SelectParameters>
              <asp:SessionParameter Name="user_id" SessionField="user_id" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
                 </div>
         </div>
         


      <hr />

          </div>
  </div>
  
      <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</asp:Content>
