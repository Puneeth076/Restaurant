<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Smile</title>
<%@include file="Links.html" %>
<script src="./script.js"></script>
</head>
<body>
<%@include file="Navbar.jsp" %>
<!-- main -->
    <div
      class="vw-100 vh-100 bg-dark main d-sm-flex flex-sm-column flex-md-column flex-lg-row"
    >
      <div class="left text-white">
        <h1 class="text-white">Enjoy Our <br /><span style="color: var(--primary);">Delicious Meal</span></h1>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos
          asperiores ipsum minus rem recusandae id laudantium quas, blanditiis
          nulla, maiores quisquam aut illum quis atque laboriosam numquam
          molestias veritatis totam.
        </p>
        <button class="primary_button">Book a table</button>
      </div>
      <div class="right">
        <img
          src="./images/logo.jpg"
          class="image"
          alt="image"
          width="600"
          height="600"
        />
      </div>
    </div>
    <!-- herosection -->
    <div class="hero" id="heroSection">
      <div class="containers my-5 py-5">
        <h3
          class="text-center section-subheading"
          style="
            font-family: 'Pacifico';
            color: var(--primary);
            font-size: 2.5rem;
          "
        >
          - Most requested -
        </h3>
        <h1
          class="text-center section-heading"
          style="font-family: 'Nunito'; font-weight: bold"
        >
          Delicious food
        </h1>
      </div>
      <div class="cards d-sm-flex flex-sm-column flex-lg-row">
        <div class="cardDetails" id="1">
          <img
            src="./images/tranding-food-2.png"
            alt=""
            width="100%"
            height="100%"
          />
          <div class="details position-absolute ps-5">
            <h1 style="font-size: 5rem">Meat Ball</h1>
            <h2>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit
              sunt placeat consectetur repellendus molestias tenetur mollitia
              quis harum iste pariatur perferendis, nulla earum, ullam dolorem
              error recusandae repellat facere dolores.
            </h2>
            <h1 style="color: coral">Rs 250</h1>
            <button class="primary_button mt-5">Buy</button>
          </div>
        </div>
        <div class="cardDetails" id="2">
          <img
            width="100%"
            height="100%"
            src="./images/tranding-food-3.png"
            alt=""
          />

          <div class="details position-absolute ps-5 w-50 h-50">
            <h1 style="font-size: 5rem">Meat Ball</h1>
            <h2>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit
              sunt placeat consectetur repellendus molestias tenetur mollitia
              quis harum iste pariatur perferendis, nulla earum, ullam dolorem
              error recusandae repellat facere dolores.
            </h2>
            <h1 style="color: coral">Rs 250</h1>
            <button class="primary_button mt-5">Buy</button>
          </div>
        </div>
        <div class="cardDetails" id="3">
          <img
            class="position-relative"
            width="100%"
            height="100%"
            src="./images/tranding-food-4.png"
            alt=""
          />
          <div class="details position-absolute ps-5">
            <h1 style="font-size: 5rem">Meat Ball</h1>
            <h2>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit
              sunt placeat consectetur repellendus molestias tenetur mollitia
              quis harum iste pariatur perferendis, nulla earum, ullam dolorem
              error recusandae repellat facere dolores.
            </h2>
            <h1 style="color: coral">Rs 250</h1>
            <button class="primary_button mt-5">Buy</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Swiper -->
    <section id="tranding">
      <div class="containers">
        <h3
          class="text-center section-subheading"
          style="
            font-family: 'Pacifico';
            color: var(--primary);
            font-size: 2.5rem;
          "
        >
          - Food menu -
        </h3>
        <h1
          class="text-center section-heading"
          style="font-family: 'Nunito'; font-weight: bold"
        >
          Most popular items
        </h1>
      </div>
      <div class="containers">
        <div class="swiper tranding-slider">
          <div class="swiper-wrapper">
            <!-- Slide-start -->
            <div class="swiper-slide tranding-slide">
              <div class="tranding-slide-img">
                <img src="images/tranding-food-1.png" alt="Tranding" />
              </div>
              <div class="tranding-slide-content">
                <h1 class="food-price">Rs 200</h1>
                <div class="tranding-slide-content-bottom">
                  <h2 class="food-name">Special Pizza</h2>
                  <h3 class="food-rating">
                    <span>4.5</span>
                    <div class="rating">
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                    </div>
                  </h3>
                </div>
              </div>
            </div>
            <!-- Slide-end -->
            <!-- Slide-start -->
            <div class="swiper-slide tranding-slide">
              <div class="tranding-slide-img">
                <img src="images/tranding-food-2.png" alt="Tranding" />
              </div>
              <div class="tranding-slide-content">
                <h1 class="food-price">Rs 200</h1>
                <div class="tranding-slide-content-bottom">
                  <h2 class="food-name">Meat Ball</h2>
                  <h3 class="food-rating">
                    <span>4.5</span>
                    <div class="rating">
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                    </div>
                  </h3>
                </div>
              </div>
            </div>
            <!-- Slide-end -->
            <!-- Slide-start -->
            <div class="swiper-slide tranding-slide">
              <div class="tranding-slide-img">
                <img src="images/tranding-food-3.png" alt="Tranding" />
              </div>
              <div class="tranding-slide-content">
                <h1 class="food-price">Rs 200</h1>
                <div class="tranding-slide-content-bottom">
                  <h2 class="food-name">Burger</h2>
                  <h3 class="food-rating">
                    <span>4.5</span>
                    <div class="rating">
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                    </div>
                  </h3>
                </div>
              </div>
            </div>
            <!-- Slide-end -->
            <!-- Slide-start -->
            <div class="swiper-slide tranding-slide">
              <div class="tranding-slide-img">
                <img src="images/tranding-food-4.png" alt="Tranding" />
              </div>
              <div class="tranding-slide-content">
                <h1 class="food-price">Rs 200</h1>
                <div class="tranding-slide-content-bottom">
                  <h2 class="food-name">Frish Curry</h2>
                  <h3 class="food-rating">
                    <span>4.5</span>
                    <div class="rating">
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                    </div>
                  </h3>
                </div>
              </div>
            </div>
            <!-- Slide-end -->
            <!-- Slide-start -->
            <div class="swiper-slide tranding-slide">
              <div class="tranding-slide-img">
                <img src="images/tranding-food-5.png" alt="Tranding" />
              </div>
              <div class="tranding-slide-content">
                <h1 class="food-price">Rs 200</h1>
                <div class="tranding-slide-content-bottom">
                  <h2 class="food-name">Pane Cake</h2>
                  <h3 class="food-rating">
                    <span>4.5</span>
                    <div class="rating">
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                    </div>
                  </h3>
                </div>
              </div>
            </div>
            <!-- Slide-end -->
            <!-- Slide-start -->
            <div class="swiper-slide tranding-slide">
              <div class="tranding-slide-img">
                <img src="images/tranding-food-6.png" alt="Tranding" />
              </div>
              <div class="tranding-slide-content">
                <h1 class="food-price">Rs 200</h1>
                <div class="tranding-slide-content-bottom">
                  <h2 class="food-name">Vanilla cake</h2>
                  <h3 class="food-rating">
                    <span>4.5</span>
                    <div class="rating">
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                    </div>
                  </h3>
                </div>
              </div>
            </div>
            <!-- Slide-end -->
            <!-- Slide-start -->
            <div class="swiper-slide tranding-slide">
              <div class="tranding-slide-img">
                <img src="images/tranding-food-7.png" alt="Tranding" />
              </div>
              <div class="tranding-slide-content">
                <h1 class="food-price">Rs 200</h1>
                <div class="tranding-slide-content-bottom">
                  <h2 class="food-name">Straw Cake</h2>
                  <h3 class="food-rating">
                    <span>4.5</span>
                    <div class="rating">
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                      <ion-icon name="star"></ion-icon>
                    </div>
                  </h3>
                </div>
              </div>
            </div>
            <!-- Slide-end -->
          </div>

          <div class="tranding-slider-control">
            <div class="swiper-button-prev slider-arrow">
              <ion-icon id="control" name="arrow-back-outline"></ion-icon>
            </div>
            <div class="swiper-button-next slider-arrow">
              <ion-icon id="control" name="arrow-forward-outline"></ion-icon>
            </div>
            <div class="swiper-pagination"></div>
          </div>
        </div>
      </div>
    </section>

    <!-- About us -->
    <section class="about d-flex" id="aboutus">
      <div class="left-about ms-5">
        <h1
          class="text-center"
          style="color: var(--primary)"
          style="margin-top: -10rem; margin-bottom: 10px; font-family: 'Pacifico';"
        >
          Hotel Smile
        </h1>
        <img src="./images/hotel.jpg" alt="Hotel" width="400" />
      </div>
      <div class="right-about d-flex flex-column align-items-start ms-5">
        <h2 class="mt-5">about us ----</h2>
        <h1>Welcome to Smile</h1>
        <p class="fs-1">
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Unde
          voluptatibus architecto molestias veritatis reiciendis similique alias
          sapiente natus aliquam repudiandae.
        </p>
        <div class="boxes">
          <div class="box">
            <h1>15</h1>
            <div class="details_about">
              <h2>Years of</h2>
              <h2>Experience</h2>
            </div>
          </div>
          <div class="box">
            <h1>15</h1>
            <div class="details_about">
              <h2>Years of</h2>
              <h2>Experience</h2>
            </div>
          </div>
        </div>
        <button class="primary_button mt-5 w-25">Read more</button>

        </section>
        <%@include file="Footer.html" %>
</body>
</html>