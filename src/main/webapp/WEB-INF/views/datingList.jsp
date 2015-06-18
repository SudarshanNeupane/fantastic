<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <body>
        <div class="wrapper">
            <div class="logo"></div>
            <div class="menu">
                <div class="slogan"> Fantastic4 Connecting People
                </div>
                <div class="menuLink">
                <a href="#">Home </a> | <a href="#">Profile </a>| <a href="#">Change Password</a>
                | <a href="#">Logout </a>
                </div>
            </div>
            <hr/>    
            <div class="travelContainer">
                <h2> Dating : </h2>

                <div class="mytravel">
                    <div class="profileimage">
                        
                        <img src="<c:url value="/resources/images/no_pic.jpg"/>" alt="user images"/>
                        <!--<img src="../../resources/images/no_pic.jpg" alt="User Image"/>-->
                    </div>
                    <div class="travelDetails">
                        fdfsdf
                    </div>
                </div>
                        
                <div class="travelOtherPost">
                    <h3>Peoples who want to date</h3>
                    <c:forEach items="${datinglist}" var="lists">
                        <div class="prof">
                            <img src='<c:url value="/resources/images/no-user-image.gif"/>' alt="friends">
                            <br>
                            Royan
                        </div>
                        <div class="details">
                            <b>${lists.description}</b>
                            <br/>
                            <em> ${lists.interestedAge} </em>  </em>
                            <br>
                            ${lists.interestedOn}<br>
                            <a href="#"> Connect </a> <a href="#"> Details </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>    
    </body>
</html>
