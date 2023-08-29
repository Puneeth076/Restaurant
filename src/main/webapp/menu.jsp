<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Menu</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <style></style>
  </head>
  
  <body>
  
    <div class="vw-100 d-flex justify-content-center align-items-center">
      <div class="w-75 h-100 gap-3">
        <div class="">
          <h1 class="text-center">Welcome to our restaurant</h1>
          <hr />
          <form class="card p-5 gap-2">
            <h2>May i know your information</h2>
            <div class="form-group">
              <label for="exampleInputEmail1">Name</label>
              <input
                type="text"
                class="form-control"
                name="name"
                required
                id="exampleInputEmail1"
                aria-describedby="emailHelp"
                placeholder="Enter name"
              />
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Email</label>
              <input
                type="email"
                name="email"
                required
                class="form-control"
                id="exampleInputPassword1"
                placeholder="Email"
              />
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Phone num</label>
              <input
                type="tel"
                name="phone"
                required
                class="form-control"
                id="exampleInputPassword1"
                placeholder="Phone number"
              />
            </div>
            <div class="form-check">
              <input
                type="checkbox"
                class="form-check-input"
                id="exampleCheck1"
              />
              <label class="form-check-label" for="exampleCheck1"
                >Share your new foods</label
              >
            </div>
            <div class="menu mt-5">
              <h1 class="text-center">Takeaway Menu</h1>
              <div class="card mt-3">
                <div class="card-header">Category</div>
                <div class="card-body d-flex flex-column">
                  <div class="card-group cursor gap-1">
                    <input type="radio" name="pizza" id="pizza" />
                    <label for="pizza"> Pizza </label>
                  </div>
                  <div class="card-group cursor gap-1">
                    <input type="radio" name="burger" id="burger" />
                    <label for="burger"> burger </label>
                  </div>
                  <div class="card-group cursor gap-1">
                    <input type="radio" name="lassi" id="lassi" />
                    <label for="lassi"> lassi </label>
                  </div>
                  <div class="card-group cursor gap-1">
                    <input type="radio" name="biryani" id="biryani" />
                    <label for="biryani"> biryani </label>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <div class="card-header">Category</div>
                <div class="card-body d-flex flex-column">
                  <div
                    class="card-group cursor gap-1 d-flex justify-content-between"
                  >
                    <div class="">
                      <input type="radio" name="pizza" id="pizza" />
                      <label for="pizza"> Pizza </label>
                    </div>
                    <div class=""><h4>Rs.270</h4></div>
                  </div>
                  <div
                    class="card-group cursor gap-1 d-flex justify-content-between"
                  >
                    <div class="">
                      <input type="radio" name="pizza" id="pizza" />
                      <label for="pizza"> Pizza </label>
                    </div>
                    <div class=""><h4>Rs.270</h4></div>
                  </div>
                  <div class="card-group cursor gap-1">
                    <input type="radio" name="lassi" id="lassi" />
                    <label for="lassi"> lassi </label>
                  </div>
                  <div class="card-group cursor gap-1">
                    <input type="radio" name="biryani" id="biryani" />
                    <label for="biryani"> biryani </label>
                  </div>
                </div>
              </div>
            </div>
            <button class="btn btn-secondary">Order</button>
          </form>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
      integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
      integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
