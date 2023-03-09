<%@ Page Title="" Language="C#" MasterPageFile="~/customerTiffinGO.Master" AutoEventWireup="true" CodeBehind="subscriptionMenu.aspx.cs" Inherits="TiffinGO.subscriptionMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <p>-</p>
      
      </div>
    
    
  </footer><!-- End Footer -->
               


          
           
       
    


      <!-- ======= Subscriptions Section ======= -->
    <section id="Submenu" class="specials">
      <div class="container">

        <div class="section-title">
          <h2>Check out our <span>Subscription Menus</span></h2>
          <p>We had made weekly meal plan for our subscription listed out here... </p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                   <a href="subscriptionMenu.aspx?subscriptionType=SothIndianPremium" >1> South Indian Premium</a>
              </li>
              <li class="nav-item">
             <a href="subscriptionMenu.aspx?subscriptionType=SothIndianPremium" >2> North Indian Premium</a>
              </li>
              <li class="nav-item">
             <a href="subscriptionMenu.aspx?subscriptionType=SothIndianLite" >3> South Indian Standard</a>
              </li>
              <li class="nav-item">
             <a href="subscriptionMenu.aspx?subscriptionType=SothIndianLite" >4> North Indian Standard</a>
              </li>
             
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">

                <div class="tab-content">

             <center>
                 <asp:HiddenField ID="HiddenField1" runat="server" />
                 <asp:GridView class="table table-striped  table-bordered " ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                     <AlternatingRowStyle BackColor="#CCCCCC" />
                     <Columns>
                        <asp:BoundField DataField="day" HeaderText="Day" SortExpression="day" />
                         <asp:BoundField DataField="breakfast" HeaderText="Breakfast" SortExpression="breakfast" />
                         <asp:BoundField DataField="lunch" HeaderText="Lunch" SortExpression="lunch" />
                         <asp:BoundField DataField="snack" HeaderText="Snack" SortExpression="snack" />
                         <asp:BoundField DataField="dinner" HeaderText="Dinner" SortExpression="dinner" />
                     </Columns>
                  
                 </asp:GridView>

                 <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                     ConnectionString="<%$ ConnectionStrings:TiffinGOConnectionString %>" SelectCommand="SELECT * FROM [tiffingomenu] WHERE ([subscriptionType] = @subscriptionType)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="HiddenField1" Name="subscriptionType" PropertyName="Value" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>

                 </center>
                       
            </div>

          </div>
        </div>

      </div>
    </section><!-- End Specials Section -->










   


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
