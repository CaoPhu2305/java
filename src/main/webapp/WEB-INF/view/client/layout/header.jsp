<%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

        <div class="container-fluid fixed-top mb-5 ">
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="/" class="navbar-brand" style="color: blue;"><img style="height: 80px; width: auto;" src="/images/avatar/Image20231115125131.png"/></a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" title="Mở menu">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">

                        <div class="navbar-nav mx-auto">
                            <form class="d-flex w-100 mx-auto" role="search">
                                <input class="form-control form-control-lg rounded-pill px-4" type="search" placeholder="Tìm kiếm sự kiện..." aria-label="Search">
                                <button class="btn btn-primary ms-3 rounded-pill px-4" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </form>
                        </div>

                        <div class="d-flex m-3 me-0">

                            <a href="/student/event/work" class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4">
                                <i class="bi bi-card-text text-primary"></i>
                            </a>


                            <a href="/student/event/cart/${sessionScope.id}" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>

                            <form method="post" action="/logout">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <button class="btn" >
                                    Logout
                                </button>
                            </form>                            

                        </div>
                    </div>
                </nav>
            </div>
        </div>