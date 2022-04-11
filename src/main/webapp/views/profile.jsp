<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <title>${firstName} ${lastName}</title>
  </head>
  <body>
  <header>
    <div class="navbar navbar-dark bg-dark box-shadow">
      <div class="container d-flex justify-content-between">
        <a href="/" class="navbar-brand d-flex align-items-center">
          <strong>Logo here</strong>
        </a>
        <div class="">
            <a class="btn btn-danger" href="/logout">Log out</a>
        </div>
      </div>
    </div>
  </header>
    <h1>Profile</h1>
    <div>
      <p>First Name: <b>${firstName}</b></p>
    </div>
    <div>
      <p>Last Name: <b>${lastName}</b></p>
    </div>
    <div>
      <p>Email: <b>${email}</b></p>
    </div>
  </body>
</html>
