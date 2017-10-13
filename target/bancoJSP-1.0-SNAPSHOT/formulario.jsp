<%-- 
    Document   : formulario
    Created on : 12-10-2017, 17:13:15
    Author     : carl
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simulacion</title>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script>
            $(function () {
            $("#fecha").datepicker();
             });
            </script>
    </head>
    
    <body>
 

    
<form name="formulario" id="formulario" action="resultado.jsp"> 
        <center> 
       
       <table>
           <tr>
                    <td colspan="2" bgcolor="white"><span class="Estilo1">Simulación de Credito de consumo</span></td>
                    <h1></h1>
                    <div>
               </tr>
               <tr>
                    <td width="164" bgcolor="#FFFF99"><span class="Estilo21">RUT</span>
                    <input class="medium bold validateRut required errorSim" type="text"  name="rut" maxlength="13"onclick="activa(this.value)">
                     
                   
                    <em>Ej: 12851195-2</em></td>
                </tr>
                <tr>
                        <td bgcolor="#FFFF99"><span class="Estilo21">Monto liquido Solicitar</span>
                 
                    <input name="monto" type="text" maxlength="11" autocomplete="off">
                           <em>Monto entre 500.000 y 100.000.000</em></td>
                 </tr>
<tr>
 <td>cantidad de cuotas: 
<select name="cuota">
<option value="select"></option>
<%
    int n=6;
    String usertype;
while(n<=60)
{

usertype=Integer.toString(n);
n++;

%>
<option value=<%=n%>><%=n%></option>
<% }%>        
           </td></tr>        
 </select>  
               <tr>
<td for="fecha">Fecha de vencimiento: 
                    <input type="text" id="fecha" name="fecha" value="" />
                  
                  </div>

                      <button class="btn btn-primary btn-sm" style="text-align: center; margin-bottom: 5px  "
                                <a name="simular" type="submit" value="simular" style="text-align: center;color: white">simular
                                <span class="glyphicon glyphicon-ok"></span>
                            </a> </button></td>
                    </center>
       </tr>
</table>
                </form>   

       </body>
</html>
