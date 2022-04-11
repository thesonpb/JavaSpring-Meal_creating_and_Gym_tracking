<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
            crossorigin="anonymous"
    />
    <title>Gym tracking</title>
</head>
<body>
    <header>
        <div class="navbar navbar-dark bg-dark box-shadow">
          <div class="container d-flex justify-content-between">
            <a href="/" class="navbar-brand d-flex align-items-center">
              <strong>Logo here</strong>
            </a>
            <div class="">
                <a href="/profile/${id}" class="btn btn-dark">
                <img style="vertical-align: middle;
                width: 20px;
                height: 20px;
                border-radius: 50%" src="https://media.istockphoto.com/vectors/user-icon-flat-isolated-on-white-background-user-symbol-vector-vector-id1300845620?k=20&m=1300845620&s=612x612&w=0&h=f4XTZDAv7NPuZbG0habSpU0sNgECM0X7nbKzTUta3n8=" alt="">
                <b>${fullName}</b>
              </a>
                <a class="btn btn-danger" href="/logout">Log out</a>
            </div>
          </div>
        </div>
      </header>
    <div>
        <p class="m-2">
            Welcome <b><a href="/profile/${id}">${fullName}</a></b>
        </p>
        
    </div>
<div class="d-flex justify-content-between">

    <input
            type="button"
            id="button"
            class="btn btn-primary m-2"
            onclick="displayForm()"
            value="Add activity"
    ></input>
</div>
<h1 class="text-center mt-3 mb-3">Gym tracking</h1>
<table class="m-2 table text-center table-bordered border-dark">
    <tr class="table-active">
        <th rowspan="2">Name</th>
        <th rowspan="2">Week</th>
        <th rowspan="2">Sets</th>
        <th rowspan="2">Reps</th>
        <th rowspan="1" colspan="2">Set 1</th>
        <th rowspan="1" colspan="2">Set 2</th>
        <th rowspan="1" colspan="2">Set 3</th>
        <th rowspan="1" colspan="2">Set 4</th>
    </tr>
    <tr class="table-active">
        <th>Weight</th>
        <th>Rep</th>
        <th>Weight</th>
        <th>Rep</th>
        <th>Weight</th>
        <th>Rep</th>
        <th>Weight</th>
        <th>Rep</th>
    </tr>
    <tbody>
    <c:forEach var="tracking" items="${trackings}">
    <tr>
        <td>${tracking.name}</td>
        <td>${tracking.week}</td>
        <td>${tracking.numberOfSets}</td>
        <td>${tracking.numberOfReps}</td>
        <td>${tracking.set1Weight}</td>
        <td>${tracking.set1Rep}</td>
        <td>${tracking.set2Weight}</td>
        <td>${tracking.set2Rep}</td>
        <td>${tracking.set3Weight}</td>
        <td>${tracking.set3Rep}</td>
        <td>${tracking.set4Weight}</td>
        <td>${tracking.set4Rep}</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<div class=" d-flex justify-content-center">
    <form style="display: none" class="form-group w-25" action="/gym/add" method="post" id="addForm" modelAttribute="tracking">
        <h2 class="text-center">Add your activity</h2>
        <div class="form-floating mb-3 mt-3">
            <input required class="form-control" type="text" name="name" id="name" />
            <label for="name">Name</label>
        </div>
        <div class="form-floating mb-3 mt-3">
            <input required class="form-control" type="text" name="week" id="week" />
            <label for="week">Week</label>
        </div>
        <div class="form-floating mb-3 mt-3">
            <input required class="form-control" type="text" name="numberOfSets" id="numberOfSets" />
            <label for="numberOfSets">Number of sets</label>
        </div>
        <div class="form-floating mb-3 mt-3">
            <input required class="form-control" type="text" name="numberOfReps" id="numberOfReps" />
            <label for="numberOfReps">Number of reps</label>
        </div>
        <!-- Set 1 2 3 4 -->
        <div class="input-group mb-3">
            <span class="input-group-text">Set 1 weight and rep</span>
            <input type="text" name="set1Weight" aria-label="Weight" class="form-control">
            <input type="text" name="set1Rep" aria-label="Rep" class="form-control">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Set 2 weight and rep</span>
            <input type="text" name="set2Weight" aria-label="Weight" class="form-control">
            <input type="text" name="set2Rep" aria-label="Rep" class="form-control">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Set 3 weight and rep</span>
            <input type="text" name="set3Weight" aria-label="Weight" class="form-control">
            <input type="text" name="set3Rep" aria-label="Rep" class="form-control">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Set 4 weight and rep</span>
            <input type="text" name="set4Weight" aria-label="Weight" class="form-control">
            <input type="text" name="set4Rep" aria-label="Rep" class="form-control">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
    </form>
</div>
</body>
<script>
    function displayForm() {
        var x = document.getElementById("addForm");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
        var button = document.getElementById("button");
        if (button.value=== "Add activity") {
            button.setAttribute("value", 'Cancel');
            button.setAttribute("class", 'btn btn-danger');
        } else {
            button.setAttribute("value", 'Add activity');
            button.setAttribute("class", 'btn btn-primary');
        }
    }
</script>
</html>