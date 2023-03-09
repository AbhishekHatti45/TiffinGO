<%@ Page Title="" Language="C#" MasterPageFile="~/TiffinGOSite.Master" AutoEventWireup="true" CodeBehind="TiffinGOsignin.aspx.cs" Inherits="TiffinGO.TiffinGOsignin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div >
          <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <p>Welcome To  TiffinGO</p>
      
      </div>
    
    
  </footer><!-- End Footer -->
               <br />
  
    <div  >
        <br />
        <br />
        <br />
       
         <div class="row">
         <div class="col-md-6 mx-auto">

            <div class="card">
            <div class="card-header"> <center> <h3>TiffinGO</h3></center> </div>
                <div class="card">
  <div class="card-body">
  <center>
    User Login
  </center>
    </div>
  </div>
            <div class="card-body">
                 <br />
                 

                 <div class="row">
                 <div class="col">
                    <label>USER ID</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox1" runat="server" placeholder="USER ID"></asp:TextBox>
                    </div>
                      <br />
                    <label>Password</label>
                    <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="Textbox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                     <br />
                     
                     

                     
                     <div class="form-group">
                         <div class="d-grid gap-2 col-12 mx-auto">

                           <asp:Button class="btn btn-light btn-block btn-lg" ID="Button2" runat="server" Text="Login" OnClick="Button2_Click"  />
                        
                        <asp:Button class="btn btn-secondary btn-block btn-lg"  ID="Button3" runat="server" Text="Create Account" OnClick="Button3_Click"  />
                        
                        </div>
                  
                   </div>
                     
                 </div>
                     
                          
            </div>
                
            </div>
               
              
        
         </div>
        </div>
        <br />
    <br />
    <br />
     <br />
    <br/>
        </div>
        </div> <br />
        <br />
       
      
            </div><
    
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
</asp:Content>
