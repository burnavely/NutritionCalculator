<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include/header.jsp"></jsp:include>

</head>
<body class="bg-dark">
	<div class="container-fluid m-0 p-0">

		<jsp:include page="include/nav.jsp"></jsp:include>

		<div class="container">
			<div class="card shadow-sm pr-3 pt-3 pl-3 mb-5 bg-light rounded-lg">
				<div class="card-header bg-info text-center text-white p-4">
					<h6 class="card-text ">To begin calculating, please enter the
						Quantity of Each Food Item that is part of the meal.</h6>
				</div>

				<div class="row ">
					<div class="col container p-5 mt-5 rounded-lg shadow-lg">
						<div class="card shadow-lg">
							<div class="card-header text-center bg-warning ">
								<h4 class="card-text">Computed Nutrition Content</h4>
							</div>
							<div class="card-body">
								<div class="row">
									<h6 class="col-6">Calories</h6>
									<h5 class="col-2">:</h5>
									<p id="calories" class="col"></p>
								</div>
								<div class="row">
									<h6 class="col-6">Protein (grams)</h6>
									<h5 class="col-2">:</h5>
									<p id="protein" class="col"></p>
								</div>
								<div class="row">
									<h6 class="col-6">Fat (grams)</h6>
									<h5 class="col-2">:</h5>
									<p id="fat" class="col"></p>
								</div>
								<div class="row">
									<h6 class="col-6">Vitamin A (IU)</h6>
									<h5 class="col-2">:</h5>
									<p id="vitamina" class="col"></p>
								</div>
								<div class="row">
									<h6 class="col-6">Calcium</h6>
									<h5 class="col-2">:</h5>
									<p id="calcium" class="col"></p>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<form class="col card-body container " id="myForm">
							<div class="form-group row">
								<h6 class="col col-form-label">Spinach (1 cup)</h6>
								<div class="col">
									<input type="number" name="qty" id="spin" class="form-control "
										placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Sweet Potato (1 med)</h6>
								<div class="col">
									<input type="number" name="qty" id="spotato"
										class="form-control" placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Yogurt (8 oz.)</h6>
								<div class="col">
									<input type="number" name="qty" id="yog" class="form-control"
										placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Skim Milk (1 cup)</h6>
								<div class="col">
									<input type="number" name="qty" id="milk" class="form-control"
										placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Whole Wheat Bread (1 slice)</h6>
								<div class="col">
									<input type="number" name="qty" id="bread" class="form-control"
										placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Brow Rice (1 cup)</h6>
								<div class="col">
									<input type="number" name="qty" id="rice" class="form-control"
										placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Watermelon (1 wedge)</h6>
								<div class="col">
									<input type="number" name="qty" id="wmelon"
										class="form-control" placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Papaya (1 1g)</h6>
								<div class="col">
									<input type="number" name="qty" id="papaya"
										class="form-control" placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Tuna in water (1 lb.)</h6>
								<div class="col">
									<input type="number" name="qty" id="tuna" class="form-control"
										placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>
							<div class="form-group row">
								<h6 class="col col-form-label">Lobster (1 med)</h6>
								<div class="col">
									<input type="number" name="qty" id="lob" class="form-control"
										placeholder="Enter Value" required
										oninvalid="this.setCustomValidity('Type 0 if the Food Item IS NOT part of the Meal')"
										oninput="this.setCustomValidity('')">
								</div>
							</div>

							<div class="form-group row mt-5">
								<div class="col-6 text-center">
									<button type="button" class="btn btn-warning"
										onclick="resetcal()">Reset</button>
								</div>
								<div class="col-6 text-center">
									<button type="button" class="btn btn-info" onclick="compute()">Compute</button>
								</div>

							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
	<jsp:include page="include/script.jsp"></jsp:include>
	
</body>
</html>