<%-- 
    Document   : Calcular
    Created on : 20/10/2016, 07:32:18 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String opc = request.getParameter("submit");
            String Title;
            if (opc.equals("trianguloArea")) {
                Title = "triangulo";
            } else {
                Title = opc;
            }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%out.print(Title);%></title>
        <link href="css.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            float area;
            int perimetro;
            if (opc.equals("rectangulo")) {
                out.print("<h1>" +opc + "</h1>");
                int base = Integer.parseInt(request.getParameter("base"));
                int altura = Integer.parseInt(request.getParameter("altura"));
                area = base * altura;
                perimetro = (2 * base) + (2 * altura);
                out.print("El area es: " + area);
                out.print("<br>El perimetro es: " + perimetro);
            } else if (opc.equals("trianguloArea")) {
                out.print("<h1>" +Title + "</h1>");
                int base = Integer.parseInt(request.getParameter("base"));
                int altura = Integer.parseInt(request.getParameter("altura"));
                float areat = (base * altura) / 2;
                out.print("El area es: " + areat);

            } else if (opc.equals("trianguloPerimetro")) {
                out.print("<h1>" +Title + "</h1>");
                int l1 = Integer.parseInt(request.getParameter("lado1"));
                int l2 = Integer.parseInt(request.getParameter("lado2"));
                int l3 = Integer.parseInt(request.getParameter("lado3"));
                perimetro = (l1+l2+l3);
                out.print("El perimetro es: " + perimetro);
            }else{
                out.print("<h1>no corre :v</h1>");
            }
        %>        
    </body>
</html>
