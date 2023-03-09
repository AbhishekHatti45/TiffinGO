<%@ Page Title="" Language="C#" MasterPageFile="~/customerTiffinGO.Master" AutoEventWireup="true" CodeBehind="mealforday.aspx.cs" Inherits="TiffinGO.mealforday" %>
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
    <section id="Subscriptions" class="specials">
      <div class="container">

        <div class="section-title">
          <h2>Book Meal For <span>The Day</span></h2>
          <p>We love to serve you Tasty and Healthy food Evryday checkout our <a href="subscription.aspx">subscription plans ...</a></p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">Book Meal For The Day </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-2">North Indian Premium</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-3">South Indian Standard</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#tab-4">North Indian Standard</a>
              </li>
             
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Select Your Menu Item</h3>
                       <div class="row">
                   <div class="col-10 mx-auto">
                   <div class="row">
                 <div class="col-md-6 mx-auto ">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Breakfast"></asp:Label>
                    </div>
                 </div>

                 
              

                 
                 
                 <div class="col-md-6 mx-auto">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </div>
                 </div>
                
                 </div>
                  </div>
                 </div>
                 
                 <div class="row">
                 <div class="col-10 mx-auto">
                   
                   <div class="row">
                 <div class="col-md-6 mx-auto ">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Lunch"></asp:Label>
                    </div>
                 </div>

                 
              

                 
                 
                 <div class="col-md-6 mx-auto">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                    </div>
                 </div>
                
                 </div>
                 </div>
                 
                 </div>
                 <br>
  <div class="row">
                 <div class="col-10 mx-auto">
                   
                   <div class="row">
                 <div class="col-md-6 mx-auto ">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Snack"></asp:Label>
                    </div>
                 </div>

                 
              

                 
                 
                 <div class="col-md-6 mx-auto">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                    </div>
                 </div>
                
                 </div>
                 </div>
                 
                 </div>

                 <br>
                        <div class="row">
                 <div class="col-10 mx-auto">
                   
                   <div class="row">
                 <div class="col-md-6 mx-auto ">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Dinner"></asp:Label>
                    </div>
                 </div>

                 
              

                 
                 
                 <div class="col-md-6 mx-auto">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                    </div>
                 </div>
                
                 </div>
                 </div>
                 
                 </div>
                 <br>



                 </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                  <img src="IMAGES/southl1.jpg" alt="" class="img-fluid" />
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-2">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>North Indian Premium</h3>
                    <p class="fst-italic">This Plan again  separatedly designed for Vegeterian and Non-Vegeterian Peoples. which is North Indian Premium veg And Nonveg! And It includes Complete Package of Breakfast,Lunch,Snack and Dinner.</p>
                    <p>North Indian cuisine is collectively the cuisine of Northern India, which includes the cuisines of Jammu and Kashmir, Punjab, Haryana, Himachal Pradesh, Rajasthan, Uttarakhand, Delhi, Uttar Pradesh and adjoining western Bihar.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="IMAGES/l2.jpg" alt="" class="img-fluid" />
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Soth Indian Standard</h3>
                    <p class="fst-italic">This Plan again  separatedly designed for Vegeterian and Non-Vegeterian Peoples. which is South Indian Premium veg And Nonveg! And It includes  Package of Lunch and Dinner only.</p>
                    <p>South Indian cuisine includes the cuisines of the five southern states of India—Andhra Pradesh, Karnataka, Kerala, Tamil Nadu and Telangana—and the union territories of Lakshadweep, Pondicherry, and the Andaman and Nicobar Islands.There are typically vegetarian and non-vegetarian dishes for all five states. Additionally, all regions have typical main dishes, snacks, light meals, desserts, and drinks that are well known in their respective region.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="IMAGES/nv3.jpg"  alt="" class="img-fluid"/>
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="tab-4">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>North Indian Standard</h3>
                    <p class="fst-italic">This Plan again  separatedly designed for Vegeterian and Non-Vegeterian Peoples. which is South Indian Premium veg And Nonveg! And It includes  Package of Lunch and Dinner only.</p>
                  
                    <p>North Indian cuisine is collectively the cuisine of Northern India, which includes the cuisines of Jammu and Kashmir, Punjab, Haryana, Himachal Pradesh, Rajasthan, Uttarakhand, Delhi, Uttar Pradesh and adjoining western Bihar.</p>
                   </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="IMAGES/l5.jpg" alt="" class="img-fluid" />
                  
                  </div>
                </div>
              </div>
              
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
