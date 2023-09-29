

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DONOR INQUIRY</title>
        <link rel="stylesheet" href="css/admin.css">

         <link rel="stylesheet" type="text/css" href="css/blooddonor_reg.css" />
    </head>
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    

    <body>
         <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
  
        
        
        
    <div class="main">
        <div class="top">
            <h2>Blood Bank Management System</h2>

       </div>
   
             <div class="mid-left">
                 <ul class="mid-left-sec-1">
                     <li><a href="donor_dash.jsp">Home</a></li>
                 </ul>
                  <ul class="mid-left-sec-2">
                     <li><a href="mprofile.jsp">Manage profile</a></li>
                  </ul><!-- comment -->
                   <ul class="mid-left-sec-3">
                     <li><a href="dfeedback.jsp">Give Feedback</a></li>
                 </ul>
                   <ul class="mid-left-sec-4">
                     <li><a href="dinquiry.jsp">Fill Inquiry</a></li>
                 </ul>
                   <ul class="mid-left-sec-5">
                     <li><a href="dcamp.jsp">View Blood Camp </a></li>
                   </ul><!-- comment -->
                    <ul class="mid-left-sec-6">
                     <li><a href="dbank.jsp">Search near Blood Bank</a></li>
                 </ul>
                    <ul class="mid-left-sec-7">
                        <li><a href="dblood.jsp">Donate Blood</a></li>
                 </ul>
             </div>
            
            
            
          
            
    </div>
        
        
        
  <!--  <div class="container">    
        <form method="post" action="dfeedback">    
              <div class="r">    
                   <div class="col-25">    
                   <label for="fname">First Name</label>    
                   </div>    
                   <div class="col-75">    
                   <input type="text" id="fname" name="firstname" placeholder="Your name..">    
                   </div>    
              </div>    
              <div class="r">    
                   <div class="col-25">    
                   <label for="lname">Last Name</label>    
                   </div>    
                   <div class="col-75">    
                   <input type="text" id="lname" name="lastname" placeholder="Your last name..">    
                   </div>    
              </div>    
              <div class="r">    
                  <div class="col-25">    
                  <label for="email">Mail Id</label>    
                  </div>    
                  <div class="col-75">    
                  <input type="email" id="email" name="mailid" placeholder="Your mail id..">    
                  </div>    
              </div>    
              <div class="r">    
                   <div class="col-25">    
                   <label for="country">Country</label>    
                   </div>    
                    <div class="col-75">    
                    <select id="country" name="country">    
                        <option value="none">Select Country</option>    
                        <option value="australia">Australia</option>    
                        <option value="canada">Canada</option>    
                        <option value="usa">USA</option>    
                        <option value="russia">Russia</option>    
                        <option value="japan">Japan</option>    
                        <option value="india">India</option>    
                        <option value="china">China</option>    
                    </select>    
                    </div> 
               </div>    
               <div class="r">    
                     <div class="col-25">    
                     <label for="feed_back">Feed Back</label>    
                     </div>    
                     <div class="col-75">    
                     <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>    
                     </div>    
              </div>    
              <div class="r">    
                     <input type="submit" value="Submit">    
             </div>    
           </form>   
    </div>
       
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
   
   <script type="text/javascript">
   var status = document.getElementById("status").value;
   if(status=="success")
	   {
	   swal("Conrats","feedback form submitted Successfully","success");
	   }
   </script>-->
   
   
   
   
   <form action="dinquiry" method="post">
         <h1>Inquiry Form</h1>
         <br><br>
       <label for="fname">First Name</label>       
       <input type="text" id="fname" name="firstname" placeholder="Your name.."> 
       
        <label for="lname">last Name</label>       
       <input type="text" id="lname" name="lastname" placeholder="Your name.."> 

       <label for="email">Email </label>
      <input type="email" id="email" name="email" required>
      
      
    

      

     
             <label for="country">State:*</label>
      <select id="country" name="country" required>
          <option value="">Select State</option>
                <option value="Andhra Pradesh">Andhra Pradesh</option>
                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                <option value="Assam">Assam</option>
                <option value="Bihar">Bihar</option>
                <option value="Chhattisgarh">Chhattisgarh</option>
                <option value="Goa">Goa</option>
                <option value="Gujarat">Gujarat</option>
                <option value="Haryana">Haryana</option>
                <option value="Himachal Pradesh">Himachal Pradesh</option>
                <option value="Jharkhand">Jharkhand</option>
                <option value="Karnataka">Karnataka</option>
                <option value="Kerala">Kerala</option>
                <option value="Madhya Pradesh">Madhya Pradesh</option>
                <option value="Maharashtra">Maharashtra</option>
                <option value="Manipur">Manipur</option>
                <option value="Meghalaya">Meghalaya</option>
                <option value="Mizoram">Mizoram</option>
                <option value="Nagaland">Nagaland</option>
                <option value="Odisha">Odisha</option>
                <option value="Punjab">Punjab</option>
                <option value="Rajasthan">Rajasthan</option>
                <option value="Sikkim">Sikkim</option>
                <option value="Tamil Nadu">Tamil Nadu</option>
                <option value="Telangana">Telangana</option>
                <option value="Tripura">Tripura</option>
                <option value="Uttarakhand">Uttarakhand</option>
                <option value="Uttar Pradesh">Uttar Pradesh</option>
                <option value="West Bengal">West Bengal</option>
        </select>
             
        <label for="feed_back">Inquiry</label>        
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
      

      <input type="submit" value="SUBMIT">
    </form>
  
  
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">  </script>
   <link rel="stylesheet" href="alert/dist/sweetalert.css">
   <script type="text/javascript">
           var status = document.getElementById("status").value;
           if(status=="success")
	   {
	   swal("Congrats","Form submitted Successfully","success");
	   }
   </script>
    </body>
</html>
