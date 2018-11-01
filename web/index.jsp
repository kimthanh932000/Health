<%-- 
    Document   : index
    Created on : Oct 30, 2018, 9:09:25 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./content/css/style.css">
        <title>Health Store</title>
    </head>

    <body>
        <!-- Top navigation -->
        <div id="top_nav">
            <div id="logo"><img src="./content/logo/logo.jpg"/></div>
            <ul class="nav">
                <c:set var="docXml" value="${requestScope.CATEGORIES}" />
                <c:if test="${not empty docXml}">
                    <c:import charEncoding="UTF-8" url="WEB-INF/xsl/category.xsl" var="listCateXSL" />
                    <x:transform xml="${docXml}" xslt="${listCateXSL}" />
                </c:if>
            </ul>
        </div>

        <div id="container">
            <div id="list_product">
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
                <div class="product_item">
                    <div class="product_upper"><img class="product_img" src="https://trungtamthuoc.com/upload/image/san-pham/banitase-0-552.jpg" /></div>
                    <h2 class="product_name">Thuốc Banitase</h2>
                    <div class="product_code">Mã sản phẩm:  ABC123</div>
                    <div class="product_price">500000 đ</div>
                </div>
            </div>
        </div>
        <div id="footer">
            &copy;Copyright - Tran Kim Thanh
        </div>

    </body>

</html>
