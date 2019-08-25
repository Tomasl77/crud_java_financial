document.getElementById("financingcreate").addEventListener('click', function(e){
    let form = document.getElementById('financingform');
    e.preventDefault();

    let data = new FormData(form);
    let json = JSON.stringify(Object.fromEntries(data));

    let xhr = new XMLHttpRequest();

    xhr.open("Post", "http://localhost:8081/financing", true);

    xhr.setRequestHeader("Content-Type","application/json");

    xhr.onreadystatechange = function() {
        if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
            alert("ok")
        } else if (this.readyState === XMLHttpRequest.DONE && this.status != 200) {
            let parsed = JSON.parse(this.response);
            parsed.errors.forEach(error => {
                
                alert(parsed.error + ": " + parsed.status + "\n" +error.field + " " + error.defaultMessage)
            });
        }
    }
    xhr.send(json);
});