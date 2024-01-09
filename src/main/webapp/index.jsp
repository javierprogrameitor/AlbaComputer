<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <c:url var="estilo" value="/CSS/estilo.css" scope="application" />
        <c:set var="contexto" value="${pageContext.request.contextPath}" scope="application"/>
        <c:import url="INC/cabecera.jsp">
            <c:param name="titulo" value="AlbaComputer" />
            <c:param name="estilo" value="${estilo}" />
        </c:import>
        <!<!-- Bulma -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
        <script src="${pageContext.request.contextPath}/JS/script.js"></script>
    </head>
    <body>
        <div class="my-element">
            <nav class="navbar is-primary" role="navigation" aria-label="main navigation">
                <div class="navbar-brand">
                    <a class="logonav">
                        <img src="./IMG/albalogo.png" height="35" alt="LogoTienda"/>
                    </a>
                    <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false">
                        <span aria-hidden="true"></span>
                        <span aria-hidden="true"></span>
                        <span aria-hidden="true"></span>
                    </a>
                </div>
                <div class="navbar-menu">
                    <div class="navbar-start">
                        <a class="navbar-item">AMD</a>
                        <a class="navbar-item">INTEL</a>
                        <a class="navbar-item">NVIDIA</a>
                        <a class="navbar-item">RADEON</a>
                        <a class="navbar-item">SATA</a>
                        <a class="navbar-item">SSD</a>
                    </div>
                    <div class="navbar-end">
                        <div class="navbar-item">
                            <div class="buttons is-right">
                                <a class="button is-primary">
                                    <strong>Sign up</strong>
                                </a>
                                <a class="button is-light">
                                    Log in
                                </a>
                                <a class="button is-info" id="cart">
                                    <i class="fas fa-shopping-cart"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>

            <section class="section">
                <div class="container">
                    <div class="columns is-multiline is-flex justify-content-center">
                        <div class="column is-one-third">
                            <div class="card">
                                <div class="card-content bg-image hover-zoom ripple shadow-1-strong rounded">
                                    <img  src="./IMG/amd.jpg" alt="computer" id="img1">
                                </div>
                            </div>
                        </div>
                        <div class="column is-one-third">
                            <div class="card">
                                <div class="card-content">
                                    <img src="./IMG/intel.jpg" alt="computer" id="img2">
                                </div>
                            </div>
                        </div>
                        <div class="column is-one-third">
                            <div class="card">
                                <div class="card-content">
                                    <img  src="./IMG/nvidia.jpg" alt="computer" id="img3">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="columns is-multiline is-flex justify-content-center">
                        <div class="column is-one-third">
                            <div class="card">
                                <div class="card-content">
                                    <img src="./IMG/radeon.jpg" alt="computer" id="img4">
                                </div>
                            </div>
                        </div>
                        <div class="column is-one-third">
                            <div class="card">
                                <div class="card-content">
                                    <img src="./IMG/sata.jpg" alt="computer" id="img5">
                                </div>
                            </div>
                        </div>
                        <div class="column is-one-third">
                            <div class="card">
                                <div class="card-content">
                                    <img src="./IMG/ssd.jpg" alt="computer" id="img6">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="modal" id="cartModal">

                <div class="modal-background"></div>
                <div class="modal-content">
                    <h1>Cesta de la Compra</h1>
                    <h1>Productos</h1>
                    <h1>Precio</h1>
                    <div class="buttons">
                        <a class="button is-primary" id="checkout">Finalizar</a>
                        <a class="button is-info" id="buy">Comprar</a>
                    </div>
                </div>
                <button class="modal-close is-large" aria-label="close" id="closeModal"></button>
            </div>
            <footer class="footer has-background-primary has-text-white">
                <div class="content has-text-centered">
                    <p>
                        <strong class="has-text-white">AlbaComputer</strong><a href="#your-link" class="has-text-white"> <i
                                class="fa-solid fa-copyright"></i>
                            Javier</a>.
                    </p>
                </div>
            </footer>
        </div>
    </body>
</html>

