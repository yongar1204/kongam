$(document).ready(function (){
    $('#contactUsSubmit').click(function (){
        var object = {}
        var formDataArr = $('#contactUsForm').serializeArray()
        var len = formDataArr.length
        for (i=0; i<len; i++){
            object[formDataArr[i].name] = formDataArr[i].value;
        }
        var jsonData = JSON.stringify(object)

        $.ajax({
            url: '/api/contact',
            type: 'POST',
            data: jsonData,
            contentType: "application/json;charset=UTF-8",
            success: function (){
                alert("success")
                window.location.href = '/';
            }
        })
    })
})

