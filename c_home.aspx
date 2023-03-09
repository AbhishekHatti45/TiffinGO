<%@ Page Title="" Language="C#" MasterPageFile="~/customerTiffinGO.Master" AutoEventWireup="true" CodeBehind="c_home.aspx.cs" Inherits="TiffinGO.c_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown"><span>Tiffin</span> Go</h2>
                <p class="animate__animated animate__fadeInUp"> Are you guys away from home and looking for good food on daily basis then we love to serve you.We are here to provide good quality food on a daily basis.   </p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background-image: url(assets/img/slide/slide-2.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Homely Healthy and Affordable</h2>
                <p class="animate__animated animate__fadeInUp">We are here to provide good quality food on a daily basis. </p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide 3 -->
          <div class="carousel-item" style="background-image: url(assets/img/slide/slide-3.jpg);">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">We love to serve you!</h2>
                <p class="animate__animated animate__fadeInUp">Are you guys away from home and looking for good food on daily basis then we love to serve you.We are here to provide good quality food on a daily basis. </p>
                <div>
                  <a href="#menu" class="btn-menu animate__animated animate__fadeInUp scrollto">Our Menu</a>
                </div>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="aboutc">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container-fluid">

        <div class="row">

          <div class="col-lg-5 align-items-stretch video-box" style='background-image: url("assets/img/about.jpg");'>
            <a href="https://www.youtube.com/watch?v=jDDaplaOz7Q" class="venobox play-btn mb-4" data-vbtype="video" data-autoplay="true"></a>
          </div>

          <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

            <div class="content">
              <h3>TiffinGO is online food provider company<strong>We are on a mission to make people’s lives easier and mealtime tastier. </strong></h3>
              <p>
              We take a fresh approach to the food industry by delivering hygienic, delicious, better-for-you, homely meals, right to your door. We are here so that you can finally ditch all the grocery shopping, cutting, cooking and cleaning and take mealtime stress off your plate. TiffinGO enables you to have your daily meals without skimping on variety or great taste. All of it, brought to you on a platform that is wondrously easy to use and at no regret prices.</p>
              <p class="fst-italic">
              

              </p>
              <ul>
                <li><i class="bx bx-check-double"></i> Our Philosophy</li>
                <li><i class="bx bx-check-double"></i> Cook responsibly & deliver food fresh and tasty.</li>
                <li><i class="bx bx-check-double"></i> We love food, and we’re committed to making it the right way. All TiffinGO food has to meet our three-point code. First, it has to be healthy, made with trusted ingredients from trusted vendors. Second, it has to be prepared with utmost hygiene standards. Finally, it has to taste good.</li>
              </ul>
              <p>
                Say No To Kitchen & Yes to Life with the most Easy, Affordable food services for your daily meals.
              </p>
            </div>

          </div>

        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Whu Us Section ======= -->
    <section id="why-us" class="why-us">
      <div class="container">

        <div class="section-title">
          <h2>Why choose <span>TiffinGO</span></h2>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row">

          <div class="col-lg-4">
            <div class="box">
              <span>01</span>
              <h4>Ingredients Sourced from Licensed Vendors</h4>
              <p>A meal is only as good as its ingredients. We mindfully source fresh veggies, hearty whole grains from farms and distributors who are highly trusted and licensed in the industry, so every bite oozes of fresh flavours.</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box">
              <span>02</span>
              <h4>Real Cooking by Expert Chefs</h4>
              <p>Home made taste is always better. That’s why our meals are hand-crafted and hand cooked by expert chefs and taste-test everything for quality before plating and sending to dispatch.</p>
            </div>
          </div>

          <div class="col-lg-4 mt-4 mt-lg-0">
            <div class="box">
              <span>03</span>
              <h4> Healthy Standardised Usage of Oils & Spices</h4>
              <p>Tasty does not mean extra oily and spicy. Our chefs know this, and all food is prepped with keeping this in the center.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Whu Us Section -->

    <!-- ======= Menu Section ======= -->
    <section id="menu" class="menu">
      <div class="container">

        <div class="section-title">
          <h2>Check our tasty <span>Menu</span></h2>
        </div>

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="menu-flters">
              <li data-filter="*" class="filter-active">Show all</li>
              <li data-filter=".filter-startersBreakfast">Breakfast</li>
              <li data-filter=".filter-saladLunch">Lunch</li>
              <li data-filter=".filter-specialtySnack">Snack</li>
                
              <li data-filter=".filter-specialtyDinner">Dinner</li>
            </ul>
          </div>
        </div>

        <div class="row menu-container">

          <div class="col-lg-6 menu-item filter-startersBreakfast">
            <div class="menu-content">
              <a href="#">South Indian Breakfast</a><span>TiffinGO</span>
            </div>
            <div class="menu-ingredients">
             Pongal/Upuma, Medhu
Vadai(2 Nos.), Sambar, 
Coconut Chutney, 
Bread, Butter Jam, 
Coffee/Tea, Milk
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-specialtySnack">
            <div class="menu-content">
              <a href="#">South Indian Snack</a><span>TiffinGO</span>
            </div>
            <div class="menu-ingredients">Bhelpuri, 
Tea/ Coffee,
Milk
            </div>
          </div>
             <div class="col-lg-6 menu-item filter-specialtySnack">
            <div class="menu-content">
              <a href="#">North Indian Snack</a><span>TiffinGO</span>
            </div>
            <div class="menu-ingredients">Panipuri, 
Tea/ Coffee,
Lassi
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-startersBreakfast">
            <div class="menu-content">
              <a href="#">North Indian Breakfast</a><span>TiffinGO</span>
            </div>
            <div class="menu-ingredients">Thepla, Sprouts salad ,Poha, Paneer bhurji ,Palak pooris and aloo Masala ,Multigrain paranthas.
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-saladLunch">
            <div class="menu-content">
              <a href="#">South Indian Lunch</a><span>TiffinGo</span>
            </div>
            <div class="menu-ingredients">
              Chappathi, Dry Alu Gobi 
masala, Plain rice, Kara
Kuzhambu, Rasam, Curd,
Appalam, Pickles, Carrot 
& Peas Avial
            </div>
          </div>
            
          <div class="col-lg-6 menu-item filter-saladLunch">
            <div class="menu-content">
              <a href="#">North Indian Lunch</a><span>TiffinGo</span>
            </div>
            <div class="menu-ingredients">
             Methi theplam kadai paneer, dal tadka, rice, papad, pickle & Dahi
            </div>
          </div>

          <div class="col-lg-6 menu-item filter-specialtyDinner">
            <div class="menu-content">
              <a href="#">South Indian Dinner</a><span>TiffinGO</span>
            </div>
            <div class="menu-ingredients">Chappathi, Dhal or Alu
kurma, Bisibelabaath,
Onion-Raitha, Fruit 
salad (1 cup), IceCream, Potato chips, 
Pickles, Butter Milk
            </div>
          </div>
                <div class="col-lg-6 menu-item filter-specialtyDinner">
            <div class="menu-content">
              <a href="#">North Indian Dinner</a><span>TiffinGO</span>
            </div>
            <div class="menu-ingredients">Matar Paneer (Mutter Paneer),Phulka

Dal Tadka 
Besan Ladoo Rajma Masala ,Rajma Chawal

            </div>
          </div>
          


        </div>

      </div>
    </section><!-- End Menu Section -->

    <!-- ======= Subscriptions Section ======= -->
    <section id="Subscriptions" class="specials">
      <div class="container">

        <div class="section-title">
          <h2>Check out our <span>Subscription Plans</span></h2>
          <p>We had made sum basic subscription Plans According to Peoples Need... </p>
        </div>

        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">South Indian Premium </a>
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
                    <h3>South Indian Premium</h3>
                    <p class="fst-italic">This Plan again  separatedly designed for Vegeterian and Non-Vegeterian Peoples. which is South Indian Premium veg And Nonveg! And It includes Complete Package of Breakfast,Lunch,Snack and Dinner.</p>
                    <p>South Indian cuisine includes the cuisines of the five southern states of India—Andhra Pradesh, Karnataka, Kerala, Tamil Nadu and Telangana—and the union territories of Lakshadweep, Pondicherry, and the Andaman and Nicobar Islands.There are typically vegetarian and non-vegetarian dishes for all five states. Additionally, all regions have typical main dishes, snacks, light meals, desserts, and drinks that are well known in their respective region.</p>
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

   

    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container-fluid">

        <div class="section-title">
          <h2>Some photos from <span>TiffinGO</span></h2>
          <p>Different Shades of TiffinGO</p>
        </div>

        <div class="row g-0">

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-1.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-1.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-2.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-2.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-3.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-3.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-4.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-4.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-5.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-5.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-6.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-6.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-7.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-7.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

          <div class="col-lg-3 col-md-4">
            <div class="gallery-item">
              <a href="assets/img/gallery/gallery-8.jpg" class="gallery-lightbox">
                <img src="assets/img/gallery/gallery-8.jpg" alt="" class="img-fluid">
              </a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Gallery Section -->


    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container position-relative">

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
                
              <div class="testimonial-item">
                <img src="IMAGES/Abhi.JPG" class="testimonial-img" alt="">
                <h3>Abhishek Hatti</h3>
                <h4>Ceo &amp; Founder</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 We love food, and we’re committed to making it the right way. All TiffinGO food has to meet our three-point code. First, it has to be healthy, made with trusted ingredients from trusted vendors. Second, it has to be prepared with utmost hygiene standards. Finally, it has to taste good.
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="IMAGES/teja.jpg" class="testimonial-img" alt="">
                <h3>Tejas Jathar</h3>
                 
                <h4>Designer</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                Say No To Kitchen & Yes to Life with the most Easy, Affordable food services for your daily meals. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="IMAGES/akshta.jpg"class="testimonial-img" alt="">
                <h3>Akshata Kadam</h3>
                <h4>Store Owner</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Cook responsibly & deliver food fresh and tasty. <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                <h3>MR Pratik Sir</h3>
                <h4>Guide</h4>
                <div class="stars">
                  <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                </div>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 Reaching New Heights Together.<i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->


          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span>Contact</span> Us</h2>
          <p>Have more Queries Contact Us to below Address...</p>
        </div>
      </div>

      <div class="map">
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d120630.8996114808!2d72.88586239999998!3d19.120127999999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1654020693654!5m2!1sen!2sin" frameborder="0" allowfullscreen></iframe>
        </div>
      <div class="container mt-5">

        <div class="info-wrap">
          <div class="row">
            <div class="col-lg-3 col-md-6 info">
              <i class="bi bi-geo-alt"></i>
              <h4>Location:</h4>
              <p>A108 Kirti college road<br>TiffinGO, Mumbai 401402</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-clock"></i>
              <h4>Open Hours:</h4>
              <p>Monday-Saturday:<br>11:00 AM - 23:00 PM</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-envelope"></i>
              <h4>Email:</h4>
              <p>tiffingo@gmail.com<br>tiffingo10@gmail.com</p>
            </div>

            <div class="col-lg-3 col-md-6 info mt-4 mt-lg-0">
              <i class="bi bi-phone"></i>
              <h4>Call:</h4>
              <p>+91 95037 65823<br>+91 93704 20704</p>
            </div>
          </div>
        </div>

        <br>
         <div  class="container">
         
         

         <div class="row"> 
         <div class= "col-md-6 ">
         <center>
         
         <div class="row"> 
         

         <div class= "col">
         <center>
         <h7>  <span style="color:Grey;">CONTACT NOW</span></h7>
         </center>
         </div>
         </div>
         <div class="row"> 
         

         <div class= "col">
         <center>
        <h2><span style="color:darkorange;">Get In Touch</span> With Us </h2>
         </center>
         </div>
         </div>
         <div class="row"> 
         

         <div class= "col">
         <center>
         </center>
         </div>
         </div>
         
         <br>
         
   

  
                 
                 <div class="row">
                   <div class="col-10 mx-auto">
                   <div class="row">
                 <div class="col-md-6 mx-auto ">
                    <div class="form-group">
                              <asp:TextBox ID="t1" CssClass="form-control" runat="server"  
             placeholder="Your Name"></asp:TextBox>
                    </div>
                 </div>

                 
              

                 
                 
                 <div class="col-md-6 mx-auto">
                    <div class="form-group">
                       <asp:TextBox ID="t2" CssClass="form-control" runat="server"  
             placeholder="Your Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="t2"></asp:RequiredFieldValidator>
                    </div>
                 </div>
                
                 </div>
                  </div>
                 </div>
                 
                 <div class="row">
                 <div class="col-10 mx-auto">
                    <div class="form-group">
                       <asp:TextBox ID="t3" runat="server" CssClass="form-control" placeholder="Your Subject"
                     ></asp:TextBox>
                    </div>
                 </div>
                 
                 </div>
                 <br>
                 
                 <div class="row">
                 <div class="col-10 mx-auto">
                   
                    <div class="form-group">
                     <asp:TextBox ID="t4" CssClass="form-control" runat="server"  
            TextMode="MultiLine" placeholder="Your Message"></asp:TextBox>
                         
       
                    </div>
                 </div>
             
                 </div>
                 

          
        <br />
                
             <div class="row">
                 <div class="col-md-6  mx-auto">
                  

                    <div class="form-group">
                        <asp:Button class="btn book-a-table-btn btn-block " 
                            ID="Button3" runat="server" Text="Send Message"   />
           
                    </div>
                    
                  

                 </div>
                 </div>
       
          </center>
         </div>

         <div class= "col-md-6 ">
         <center>
         <img src="assets/img/gallery/gallery-8.jpg" class="img-fluid" />
          </center>
         </div>

    

         </div>
        </div>
    <br />

      </div>
    </section><!-- End Contact Section -->
      
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
     
</asp:Content>
