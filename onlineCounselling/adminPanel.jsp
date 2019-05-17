<!DOCTYPE html>
<html>
<head>
	<title>admin panel</title>
	<jsp:include page="library.jsp" />
	<jsp:include page="adminPanelHeader.jsp" />
</head>
<script type="text/javascript">
	function addRow(tableID) {

			var table = document.getElementById(tableID);

			var rowCount = table.rows.length;
			var row = table.insertRow(rowCount);

			var colCount = table.rows[0].cells.length;

			for(var i=0; i<colCount; i++) {

				var newcell	= row.insertCell(i);

				newcell.innerHTML = table.rows[0].cells[i].innerHTML;
				//alert(newcell.childNodes);
				switch(newcell.childNodes[0].type) {
					case "text":
							newcell.childNodes[0].value = "";
							break;
					case "checkbox":
							newcell.childNodes[0].checked = false;
							break;
				}
			}
		}

		function deleteRow(tableID) {
			try {
			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;

			for(var i=0; i<rowCount; i++) {
				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];
				if(null != chkbox && true == chkbox.checked) {
					if(rowCount <= 1) {
						alert("Cannot delete all the rows.");
						break;
					}
					table.deleteRow(i);
					rowCount--;
					i--;
				}
			}
			}catch(e) {
				alert(e);
			}
		}
	
</script>

<body>


<div id="addCampus" style="display: none;border:1px solid black;margin-top: 10px" class="col-sm-6 container">
	<form>
		<label><h3>Add Campus</h3></label><br>
		<center>
		<label>Name </label>
		<input type="text" name="campusName"><br>
		<label>Address </label>
		<input type="text" name="address"><br>
		<label>Country </label>
		<select name="country">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br>
		<label>State </label>
		<select name="country">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br>
		<label>City </label>
		<select name="country">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br>
		<label>Zip Code </label>
		<input type="text" name="zipcode"><br><br>

		<button type="submit" class="btn btn-primary" style="margin-top: 15px;margin-left: 15px;letter-spacing: 1px ;width: 45%;display:inline-block;" >Add
        </button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin-top: 10px;margin-left: 15px;letter-spacing: 1px;width: 45%;" onclick="javascript:addStreamFunction('none')">Cancel
        </button>
        </center>
	</form>
</div>




<div id="addStream" style="display: none;border:1px solid black;margin-top: 10px" class="col-sm-6 container">
	<form>
		<label><h3>Add Stream</h3></label><br>
		<center>
		<input type="button" value="Add Row" onclick="addRow('addStreamTable')" />
		<input type="button" value="Delete Row" onclick="deleteRow('addStreamTable')" />
		<div>
			<table id="addStreamTable">
				<tr>
					<td><input type='checkbox' name='chk'/></td>
					<td><label>Stream </label></td>
					<td><input type='text' name='streamName'/></td>
					<td><label>Full Name </label></td>
					<td><input type="text" name="fullName"></td>
				</tr>
			</table>
		</div>
		<button type="submit" class="btn btn-primary" style="margin-top: 15px;margin-left: 15px;letter-spacing: 1px ;width: 45%;display:inline-block;" >Add
        </button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin-top: 10px;margin-left: 15px;letter-spacing: 1px;width: 45%;" onclick="javascript:addStreamFunction('none')">Cancel
        </button>
        </center>
	</form>
</div>




<div id="addBranch" style="display:none;border:1px solid black;margin-top: 10px" class="col-sm-8 container">
	<form>
		<label><h3>Add Branch</h3></label><br>
		<center>
		<div>
			<label>Select Campus : </label>
			<select name="country">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br>
			<label>Select Stream : </label>
			<select name="state">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br><br>
			<input type="button" value="Add Row" onclick="addRow('addBranchTable')" />
			<input type="button" value="Delete Row" onclick="deleteRow('addBranchTable')" />
			<table id="addBranchTable">
				<tr>
					<td><input type='checkbox' name='chk'/></td>
					<td><label style="margin-left: 15px">Branch Name </label></td>
					<td><input type='text' name='branchName'/></td>
					<td><label style="margin-left: 25px">Full Name </label></td>
					<td><input type='text' name='fullName'/></td>
					<td><label style="margin-left: 25px">No. of Seats </label></td>
					<td><input type='text' name='noOfSeats'/></td>
				</tr>
			</table>
		</div>
		<button type="submit" class="btn btn-primary" style="margin-top: 15px;margin-left: 15px;letter-spacing: 1px ;width: 45%;display:inline-block;" >Add
        </button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin-top: 10px;margin-left: 15px;letter-spacing: 1px;width: 45%;" onclick="javascript:addBranchFunction('none')">Cancel
        </button>
        </center>
	</form>
</div>






<div id="addCity" style="display:none;border:1px solid black;margin-top: 10px" class="col-sm-6 container">
	<form>
		<label><h3>Add City</h3></label><br>
		<center>
		<div>
			<label>Select Country : </label>
			<select name="country">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br>
			<label>Select State : </label>
			<select name="state">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br><br>
			<input type="button" value="Add Row" onclick="addRow('addCityTable')" />
			<input type="button" value="Delete Row" onclick="deleteRow('addCityTable')" />
			<table id="addCityTable">
				<tr>
					<td><input type='checkbox' name='chk'/></td>
					<td><label>City Name </label></td>
					<td><input type='text' name='cityName'/></td>
				</tr>
			</table>
		</div>
		<button type="submit" class="btn btn-primary" style="margin-top: 15px;margin-left: 15px;letter-spacing: 1px ;width: 45%;display:inline-block;" >Add
        </button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin-top: 10px;margin-left: 15px;letter-spacing: 1px;width: 45%;" onclick="javascript:addCityFunction('none')">Cancel
        </button>
        </center>
	</form>
</div>




<div id="addState" style="display:none;border:1px solid black;margin-top: 10px" class="col-sm-6 container">
	<form>
		<label><h3>Add State</h3></label><br>
		<center>
		<div>
			<label>Select Country : </label>
			<select name="country">
					<OPTION value="in">India</OPTION>
					<OPTION value="de">Germany</OPTION>
					<OPTION value="fr">France</OPTION>
					<OPTION value="us">United States</OPTION>
					<OPTION value="ch">Switzerland</OPTION>
			</select><br><br>
			<input type="button" value="Add Row" onclick="addRow('addStateTable')" />
			<input type="button" value="Delete Row" onclick="deleteRow('addStateTable')" />
			<table id="addStateTable">
				<tr>
					<td><input type='checkbox' name='chk'/></td>
					<td><label>State Name </label></td>
					<td><input type='text' name='stateName'/></td>
				</tr>
			</table>
		</div>
		<button type="submit" class="btn btn-primary" style="margin-top: 15px;margin-left: 15px;letter-spacing: 1px ;width: 45%;display:inline-block;" >Add
        </button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin-top: 10px;margin-left: 15px;letter-spacing: 1px;width: 45%;" onclick="javascript:addStateFunction('none')">Cancel
        </button>
        </center>
	</form>
</div>




<div id="addCountry" style="display: none;border:1px solid black;margin-top: 10px" class="col-sm-6 container">
	<form>
		<label><h3>Add Country</h3></label><br>
		<center>
		<input type="button" value="Add Row" onclick="addRow('addCountryTable')" />
		<input type="button" value="Delete Row" onclick="deleteRow('addCountryTable')" />
		<div>
			<table id="addCountryTable">
				<tr>
					<td><input type='checkbox' name='chk'/></td>
					<td><label>Country Name </label></td>
					<td><input type='text' name='countryName'/></td>
				</tr>
			</table>
		</div>
		<button type="submit" class="btn btn-primary" style="margin-top: 15px;margin-left: 15px;letter-spacing: 1px ;width: 45%;display:inline-block;" >Add
        </button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="margin-top: 10px;margin-left: 15px;letter-spacing: 1px;width: 45%;" onclick="javascript:addCountryFunction('none')">Cancel
        </button>
        </center>
	</form>
</div>


</body>
</html>
