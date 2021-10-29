<%--
  Created by IntelliJ IDEA.
  User: VinhBui
  Date: 2021-09-10
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="<c:url value="/template/admin/img/AdminLTELogo.png"/>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-transition os-host-overflow-x"><div class="os-resize-observer-host observed"><div class="os-resize-observer" style="left: 0px; right: auto;"></div></div><div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;"><div class="os-resize-observer"></div></div><div class="os-content-glue" style="margin: 0px -8px; width: 73px; height: 354px;"></div><div class="os-padding"><div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow: scroll;"><div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="<c:url value="/template/admin/img/user2-160x160.jpg"/>" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Alexander Pierce</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item">
                    <a href="<c:url value="/admin-danh-sach-chuyen-muc"/>" class="nav-link">
                        <i class="nav-icon fas fa-chart-pie"></i>
                        <p>
                            Chuyên Mục
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<c:url value="/admin-danh-sach-san-pham"/>" class="nav-link">
                        <i class="fas fa-box-open"></i>
                        <p>
                          Sản Phẩm
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<c:url value="/admin-danh-sach-don-hang"/>" class="nav-link">
                        <i class="fas fa-shopping-cart"></i>
                        <p>
                           Danh Sách Đơn Hàng
                        </p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="<c:url value="/admin-banner"/>" class="nav-link">
                        <i class="fas fa-link"></i>
                        <p>
                           Banner
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="<c:url value="/admin-danh-sach-khach-hang"/>" class="nav-link">
                        <i class="fas fa-users"></i>
                        <p>
                           Danh Sách Khách Hàng
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div></div></div><div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="width: 38.5417%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden"><div class="os-scrollbar-track"><div class="os-scrollbar-handle" style="height: 35.1836%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar-corner"></div></div>
    <!-- /.sidebar -->
</aside>
