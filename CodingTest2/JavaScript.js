function myFunction(txtFacultyID) {

    var input = txtFacultyID.value;
    var FChar = input.charAt(0);
    if (FChar != "F") {
        var lblValue = document.getElementById('Label4');
        lblValue.innerHTML = "Invalid faculty ID";
        lblValue.style.color = "red";
    }

}

function txtOnFocus(txt) {
    lblValue.innerHTML = "";
    lblValue.style.color = "black";
}

function txtOnBlur(txt) {
    if (lblValue.innerHTML == "") {
        lblValue.innerHTML == "";
    }
}