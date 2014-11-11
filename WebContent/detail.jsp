<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detail page for Portfolio</title>
</head>
<body>

</body>
</html> --%>
<!-- detail page template -->
<!DOCTYPE html>
<html>
<head>
    <base href="http://demos.telerik.com/kendo-ui/grid/hierarchy">
    <style>html { font-size: 12px; font-family: Arial, Helvetica, sans-serif; }</style>
    <title></title>
    <link href="http://cdn.kendostatic.com/2014.2.1008/styles/kendo.common.min.css" rel="stylesheet" />
    <link href="http://cdn.kendostatic.com/2014.2.1008/styles/kendo.default.min.css" rel="stylesheet" />
    <link href="http://cdn.kendostatic.com/2014.2.1008/styles/kendo.dataviz.min.css" rel="stylesheet" />
    <link href="http://cdn.kendostatic.com/2014.2.1008/styles/kendo.dataviz.default.min.css" rel="stylesheet" />
    <script src="http://cdn.kendostatic.com/2014.2.1008/js/jquery.min.js"></script>
    <script src="http://cdn.kendostatic.com/2014.2.1008/js/angular.min.js"></script>
    <script src="http://cdn.kendostatic.com/2014.2.1008/js/kendo.all.min.js"></script>
</head>
<body>
    
        <div id="example">
            <div id="grid"></div>

            <script>
                $(document).ready(function() {
                    var element = $("#grid").kendoGrid({
                        dataSource: {
                            type: "odata",
                            transport: {
                                read: "http://demos.telerik.com/kendo-ui/service/Northwind.svc/Employees"
                            },
                            pageSize: 6,
                            serverPaging: true,
                            serverSorting: true
                        },
                        height: 600,
                        sortable: true,
                        pageable: true,
                        detailInit: detailInit,
                        dataBound: function() {
                            this.expandRow(this.tbody.find("tr.k-master-row").first());
                        },
                        columns: [
                            {
                                field: "FirstName",
                                title: "First Name",
                                width: "110px"
                            },
                            {
                                field: "LastName",
                                title: "Last Name",
                                width: "110px"
                            },
                            {
                                field: "Country",
                                width: "110px"
                            },
                            {
                                field: "City",
                                width: "110px"
                            },
                            {
                                field: "Title"
                            }
                        ]
                    });
                });
 var crudServiceBaseUrl = "http://demos.telerik.com/kendo-ui/service",
                        dataSource = new kendo.data.DataSource({
                            transport: {
                                read: {
                                    url: crudServiceBaseUrl + "/Products",
                                    dataType: "jsonp"
                                },
                                update: {
                                    url: crudServiceBaseUrl + "/Products/Update",
                                    dataType: "jsonp"
                                },
                                destroy: {
                                    url: crudServiceBaseUrl + "/Products/Destroy",
                                    dataType: "jsonp"
                                },
                                create: {
                                    url: crudServiceBaseUrl + "/Products/Create",
                                    dataType: "jsonp"
                                },
                                parameterMap: function (options, operation) {
                                    if (operation !== "read" && options.models) {
                                        return { models: kendo.stringify(options.models) };
                                    }
                                }
                            },
                            batch: true,
                            pageSize: 20,
                            schema: {
                                model: {
                                    id: "ProductID",
                                    fields: {
                                        ProductID: { editable: false, nullable: true },
                                        ProductName: {
                                            validation: {
                                                required: true,
                                                productnamevalidation: function (input) {
                                                    if (input.is("[name='ProductName']") && input.val() != "") {
                                                        input.attr("data-productnamevalidation-msg", "Product Name should start with capital letter");
                                                        return /^[A-Z]/.test(input.val());
                                                    }

                                                    return true;
                                                }
                                            }
                                        },
                                        UnitPrice: { type: "number", validation: { required: true, min: 1} },
                                        Discontinued: { type: "boolean" },
                                        UnitsInStock: { type: "number", validation: { min: 0, required: true} }
                                    }
                                }
                            }
                        });
                function detailInit(e) {
                    $("<div/>").appendTo(e.detailCell).kendoGrid({
                        dataSource: dataSource,
                        scrollable: false,
                        sortable: true,
                        pageable: true,
                        columns: [
                            "ProductName",
                            { field: "UnitPrice", title: "Unit Price", format: "{0:c}", width: "120px" },
                            { field: "UnitsInStock", title: "Units In Stock", width: "120px" },
                            { field: "Discontinued", width: "120px" },
                            { command: ["edit", "destroy"], title: "&nbsp;", width: "200px"}],
                        editable: "inline"
                    });
                  $( "<p style=\"color:red\">Test</p>" ).appendTo(e.detailCell );
                }
            </script>
        </div>


</body>
</html>
