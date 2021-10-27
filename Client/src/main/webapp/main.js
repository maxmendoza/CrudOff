
const getCustomers = () => {
    $("#table").load(" #table");
    $.ajax({
        method: "GET",
        headers: { "Accept": "application/json" },
        url: "http://localhost:8080/_100221ServerRest_war_exploded/customer/"
    }).done(function (res){
        let customers = res;
        let table = $("#table");
        for(let i = 0; i < customers.length; i++){
            table.append("<tr><th scope='col'>"+(i+1)+"</th>"+
                "<th scope='col'>"+customers[i].customerNumber+"</th>"+
                "<th scope='col'>"+customers[i].customerName+"</th>"+
                "<th scope='col'>"+customers[i].contactFirstName+" "+customers[i].contactLastName+"</th>"+
                "<th scope='col'>"+customers[i].phone+"</th>"+
                "<th scope='col'>"+customers[i].city+"</th>"+
                "<th scope='col'>"+customers[i].country+"</th>"+
                "<th scope='col'>"+customers[i].salesRepEmployeeNumber+"</th>"+
                "<th scope='col'>"+customers[i].creditLimit+"</th></tr>")
        }
    });
    return false;
};

const getCustomer = () => {
    let id = document.getElementById("customerNumber").value;
    $("#table").load(" #table");
    $.ajax({
        method: "GET",
        headers: { "Accept": "application/json" },
        url: "http://localhost:8080/_100221ServerRest_war_exploded/customer/"+id
    }).done(function (res){
        let customers = res;
        let table = $("#table");
        table.append("<tr><th scope='col'>"+1+"</th>"+
            "<th scope='col'>"+customers.customerNumber+"</th>"+
            "<th scope='col'>"+customers.customerName+"</th>"+
            "<th scope='col'>"+customers.contactFirstName+" "+customers.contactLastName+"</th>"+
            "<th scope='col'>"+customers.phone+"</th>"+
            "<th scope='col'>"+customers.city+"</th>"+
            "<th scope='col'>"+customers.country+"</th>"+
            "<th scope='col'>"+customers.salesRepEmployeeNumber+"</th>"+
            "<th scope='col'>"+customers.creditLimit+"</th></tr>")

    });
    return false;
};

const registerOrUpdate = () => {
    let customer = new Object();
    customer.customerNumber = document.getElementById("customerNumber").value;
    customer.customerName = document.getElementById("customerName").value;
    customer.contactLastName = document.getElementById("contactLastName").value;
    customer.contactFirstName = document.getElementById("contactFirstName").value;
    customer.phone = document.getElementById("phone").value;
    customer.addressLine1 = document.getElementById("addressLine1").value;
    customer.addressLine2 = document.getElementById("addressLine2").value;
    customer.city = document.getElementById("city").value;
    customer.state = document.getElementById("state").value;
    customer.postalCode = document.getElementById("postalCode").value;
    customer.country = document.getElementById("country").value;
    customer.salesRepEmployeeNumber = document.getElementById("salesRepEmployeeNumber").value;
    customer.creditLimit = document.getElementById("creditLimit").value;
    if(document.getElementById("accion").value == 'Actualizar'){
        $.ajax({
            type: 'POST',
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/x-www-form-urlencoded"
            },
            url: 'http://localhost:8080/_100221ServerRest_war_exploded/customer/save/'+customer.customerNumber,
            data: customer
        }).done(res => {
            console.log(res);
            document.getElementById("mensaje").innerHTML = "Acción actualización ejecutada";
        });
    }else{
        $.ajax({
            type: 'POST',
            headers: {
                "Accept": "application/json",
                "Content-Type": "application/x-www-form-urlencoded"
            },
            url: 'http://localhost:8080/_100221ServerRest_war_exploded/customer/save',
            data: customer
        }).done(res => {
            console.log(res);
            document.getElementById("mensaje").innerHTML = "Acción registro ejecutada";
        });
    }
    return false;
}
const deleteCustomer = () => {
    let id = document.getElementById("customerNumber").value;
    console.log(id);
    $.ajax({
        method: "DELETE",
        headers: { "Accept": "application/json"},
        url: "http://localhost:8080/_100221ServerRest_war_exploded/customer/delete/"+id
    }).done(function (res){
        document.getElementById("mensaje").innerHTML = "Registro eliminado";
    });
    return false;
}