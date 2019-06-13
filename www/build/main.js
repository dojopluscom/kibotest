(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["main"],{

/***/ "./src/$$_lazy_route_resource lazy recursive":
/*!**********************************************************!*\
  !*** ./src/$$_lazy_route_resource lazy namespace object ***!
  \**********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

function webpackEmptyAsyncContext(req) {
	// Here Promise.resolve().then() is used instead of new Promise() to prevent
	// uncaught exception popping up in devtools
	return Promise.resolve().then(function() {
		var e = new Error("Cannot find module '" + req + "'");
		e.code = 'MODULE_NOT_FOUND';
		throw e;
	});
}
webpackEmptyAsyncContext.keys = function() { return []; };
webpackEmptyAsyncContext.resolve = webpackEmptyAsyncContext;
module.exports = webpackEmptyAsyncContext;
webpackEmptyAsyncContext.id = "./src/$$_lazy_route_resource lazy recursive";

/***/ }),

/***/ "./src/app/app-routing.module.ts":
/*!***************************************!*\
  !*** ./src/app/app-routing.module.ts ***!
  \***************************************/
/*! exports provided: AppRoutingModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppRoutingModule", function() { return AppRoutingModule; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/router */ "./node_modules/@angular/router/fesm5/router.js");
/* harmony import */ var _components_views_home_home_component__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./components/views/home/home.component */ "./src/app/components/views/home/home.component.ts");




var routes = [
    { path: '', component: _components_views_home_home_component__WEBPACK_IMPORTED_MODULE_3__["HomeComponent"] },
    { path: '**', pathMatch: 'full', redirectTo: 'home' }
];
var AppRoutingModule = /** @class */ (function () {
    function AppRoutingModule() {
    }
    AppRoutingModule = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"])({
            imports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"].forRoot(routes)],
            exports: [_angular_router__WEBPACK_IMPORTED_MODULE_2__["RouterModule"]]
        })
    ], AppRoutingModule);
    return AppRoutingModule;
}());



/***/ }),

/***/ "./src/app/app.component.html":
/*!************************************!*\
  !*** ./src/app/app.component.html ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<app-header title='header-component'></app-header>\n\n<router-outlet></router-outlet>\n\n<app-footer title='footer-component'></app-footer>\n"

/***/ }),

/***/ "./src/app/app.component.scss":
/*!************************************!*\
  !*** ./src/app/app.component.scss ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IiIsImZpbGUiOiJzcmMvYXBwL2FwcC5jb21wb25lbnQuc2NzcyJ9 */"

/***/ }),

/***/ "./src/app/app.component.ts":
/*!**********************************!*\
  !*** ./src/app/app.component.ts ***!
  \**********************************/
/*! exports provided: AppComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppComponent", function() { return AppComponent; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");


var AppComponent = /** @class */ (function () {
    function AppComponent() {
        this.title = 'kibo-front';
    }
    AppComponent = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-root',
            template: __webpack_require__(/*! ./app.component.html */ "./src/app/app.component.html"),
            styles: [__webpack_require__(/*! ./app.component.scss */ "./src/app/app.component.scss")]
        })
    ], AppComponent);
    return AppComponent;
}());



/***/ }),

/***/ "./src/app/app.module.ts":
/*!*******************************!*\
  !*** ./src/app/app.module.ts ***!
  \*******************************/
/*! exports provided: AppModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppModule", function() { return AppModule; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/platform-browser */ "./node_modules/@angular/platform-browser/fesm5/platform-browser.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");
/* harmony import */ var ngx_slick_carousel__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ngx-slick-carousel */ "./node_modules/ngx-slick-carousel/fesm5/ngx-slick-carousel.js");
/* harmony import */ var _app_routing_module__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./app-routing.module */ "./src/app/app-routing.module.ts");
/* harmony import */ var _app_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./app.component */ "./src/app/app.component.ts");
/* harmony import */ var _components_views_home_home_component__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./components/views/home/home.component */ "./src/app/components/views/home/home.component.ts");
/* harmony import */ var _components_commons_header_header_component__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! ./components/commons/header/header.component */ "./src/app/components/commons/header/header.component.ts");
/* harmony import */ var _components_commons_footer_footer_component__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./components/commons/footer/footer.component */ "./src/app/components/commons/footer/footer.component.ts");
/* harmony import */ var _services_wp_wp_service__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ./services/wp/wp.service */ "./src/app/services/wp/wp.service.ts");











var AppModule = /** @class */ (function () {
    function AppModule() {
    }
    AppModule = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_2__["NgModule"])({
            declarations: [
                _app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"],
                _components_views_home_home_component__WEBPACK_IMPORTED_MODULE_7__["HomeComponent"],
                _components_commons_header_header_component__WEBPACK_IMPORTED_MODULE_8__["HeaderComponent"],
                _components_commons_footer_footer_component__WEBPACK_IMPORTED_MODULE_9__["FooterComponent"]
            ],
            imports: [
                _angular_platform_browser__WEBPACK_IMPORTED_MODULE_1__["BrowserModule"],
                _app_routing_module__WEBPACK_IMPORTED_MODULE_5__["AppRoutingModule"],
                _angular_common_http__WEBPACK_IMPORTED_MODULE_3__["HttpClientModule"],
                ngx_slick_carousel__WEBPACK_IMPORTED_MODULE_4__["SlickCarouselModule"]
            ],
            providers: [_services_wp_wp_service__WEBPACK_IMPORTED_MODULE_10__["WpService"]],
            bootstrap: [_app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"]]
        })
    ], AppModule);
    return AppModule;
}());



/***/ }),

/***/ "./src/app/components/commons/footer/footer.component.html":
/*!*****************************************************************!*\
  !*** ./src/app/components/commons/footer/footer.component.html ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<footer id=\"footer-element\">\n\n    <div class=\"container\" id=\"footer-container\">\n       Kibo Studios 2019. <a id=\"footer-copy-link\" href=\"#\">Política de Privacidad</a>\n    </div>\n\n</footer>\n"

/***/ }),

/***/ "./src/app/components/commons/footer/footer.component.scss":
/*!*****************************************************************!*\
  !*** ./src/app/components/commons/footer/footer.component.scss ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "#footer-element {\n  background: #4A4A4A;\n  height: 65px; }\n  #footer-element #footer-container {\n    color: #FFFFFF;\n    text-align: center;\n    padding: 15px 0;\n    display: block;\n    height: 35px;\n    line-height: 35px;\n    font-size: 17px; }\n\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9mb3J0aXp3ZWIvRG9jdW1lbnRzL1BST1lFQ1RPUy9ET0pPL2tpYm90ZXN0L2FwcC9raWJvdGVzdC9raWJvLWZyb250L3NyYy9hcHAvY29tcG9uZW50cy9jb21tb25zL2Zvb3Rlci9mb290ZXIuY29tcG9uZW50LnNjc3MiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQ0E7RUFDSSxtQkFBbUI7RUFDbkIsWUFBWSxFQUFBO0VBRmhCO0lBSVEsY0FBYztJQUNkLGtCQUFrQjtJQUNsQixlQUFlO0lBQ2YsY0FBYztJQUNkLFlBQVk7SUFDWixpQkFBaUI7SUFDakIsZUFBZSxFQUFBIiwiZmlsZSI6InNyYy9hcHAvY29tcG9uZW50cy9jb21tb25zL2Zvb3Rlci9mb290ZXIuY29tcG9uZW50LnNjc3MiLCJzb3VyY2VzQ29udGVudCI6WyJcbiNmb290ZXItZWxlbWVudCB7XG4gICAgYmFja2dyb3VuZDogIzRBNEE0QTtcbiAgICBoZWlnaHQ6IDY1cHg7XG4gICAgI2Zvb3Rlci1jb250YWluZXIge1xuICAgICAgICBjb2xvcjogI0ZGRkZGRjtcbiAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgICBwYWRkaW5nOiAxNXB4IDA7XG4gICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICBoZWlnaHQ6IDM1cHg7XG4gICAgICAgIGxpbmUtaGVpZ2h0OiAzNXB4O1xuICAgICAgICBmb250LXNpemU6IDE3cHg7XG4gICAgICAgIGHCoHtcbiAgICAgICAgfVxuXG4gICAgfVxuXG59XG4iXX0= */"

/***/ }),

/***/ "./src/app/components/commons/footer/footer.component.ts":
/*!***************************************************************!*\
  !*** ./src/app/components/commons/footer/footer.component.ts ***!
  \***************************************************************/
/*! exports provided: FooterComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "FooterComponent", function() { return FooterComponent; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");


var FooterComponent = /** @class */ (function () {
    function FooterComponent() {
    }
    FooterComponent.prototype.ngOnInit = function () {
    };
    FooterComponent = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-footer',
            template: __webpack_require__(/*! ./footer.component.html */ "./src/app/components/commons/footer/footer.component.html"),
            styles: [__webpack_require__(/*! ./footer.component.scss */ "./src/app/components/commons/footer/footer.component.scss")]
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [])
    ], FooterComponent);
    return FooterComponent;
}());



/***/ }),

/***/ "./src/app/components/commons/header/header.component.html":
/*!*****************************************************************!*\
  !*** ./src/app/components/commons/header/header.component.html ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<header>\n    <div class=\"container\">\n        <div id=\"logo-block\">\n            <img src=\"./assets/img/commons/logo/dark.png\">\n        </div>\n        <div id=\"menu-block\">\n            <ul >\n                <li *ngFor=\"let item of data; let i = index\">\n                    <a href=\"{{item.url}}\">{{item.title}}</a>\n                </li>\n            </ul>\n        </div>\n    </div>\n</header>\n"

/***/ }),

/***/ "./src/app/components/commons/header/header.component.scss":
/*!*****************************************************************!*\
  !*** ./src/app/components/commons/header/header.component.scss ***!
  \*****************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "header {\n  width: 100vw;\n  position: fixed;\n  top: 35px;\n  left: 0;\n  z-index: 999;\n  transition: all 0.15s linear; }\n  header.menu-fixed {\n    top: 0;\n    background-color: rgba(255, 255, 255, 0.75); }\n  header > div {\n    height: 35px; }\n  header > div > div {\n      height: 35px; }\n  header > div > div#logo-block {\n        float: left; }\n  header > div > div#menu-block {\n        float: right; }\n  header > div > div#menu-block ul {\n          display: block; }\n  header > div > div#menu-block ul li {\n            vertical-align: middle;\n            list-style: none;\n            display: inline-block;\n            margin-left: 60px; }\n  header > div > div#menu-block ul li a {\n              text-decoration: none;\n              text-transform: uppercase;\n              opacity: 0.5;\n              font-family: \"Montserrat-Regular\";\n              font-size: 13px;\n              color: #000000;\n              letter-spacing: 0.2px;\n              line-height: 35px;\n              text-align: left; }\n\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIi9Vc2Vycy9mb3J0aXp3ZWIvRG9jdW1lbnRzL1BST1lFQ1RPUy9ET0pPL2tpYm90ZXN0L2FwcC9raWJvdGVzdC9raWJvLWZyb250L3NyYy9hcHAvY29tcG9uZW50cy9jb21tb25zL2hlYWRlci9oZWFkZXIuY29tcG9uZW50LnNjc3MiLCIvVXNlcnMvZm9ydGl6d2ViL0RvY3VtZW50cy9QUk9ZRUNUT1MvRE9KTy9raWJvdGVzdC9hcHAva2lib3Rlc3Qva2liby1mcm9udC9zcmMvYXNzZXRzL3Njc3MvX2Z1bmN0aW9ucy5zY3NzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUdBO0VBQ0ksWUFBWTtFQUNaLGVBQWU7RUFDZixTQUFTO0VBQ1QsT0FBTztFQUNQLFlBQVk7RUM0RUosNEJEM0U2QixFQUFBO0VBTnpDO0lBUVEsTUFBTTtJQUNOLDJDQUF3QyxFQUFBO0VBVGhEO0lBWVEsWUFBWSxFQUFBO0VBWnBCO01BZVksWUFBWSxFQUFBO0VBZnhCO1FBaUJnQixXQUFXLEVBQUE7RUFqQjNCO1FBcUJnQixZQUFZLEVBQUE7RUFyQjVCO1VBdUJvQixjQUFjLEVBQUE7RUF2QmxDO1lBeUJ3QixzQkFBc0I7WUFDdEIsZ0JBQWdCO1lBQ2hCLHFCQUFxQjtZQUNyQixpQkFBaUIsRUFBQTtFQTVCekM7Y0E4QjRCLHFCQUFxQjtjQUNyQix5QkFBeUI7Y0FDekIsWUFBWTtjQUNaLGlDQUFpQztjQUNqQyxlQUFlO2NBQ2YsY0FBYztjQUNkLHFCQUFxQjtjQUNyQixpQkFBaUI7Y0FDakIsZ0JBQWdCLEVBQUEiLCJmaWxlIjoic3JjL2FwcC9jb21wb25lbnRzL2NvbW1vbnMvaGVhZGVyL2hlYWRlci5jb21wb25lbnQuc2NzcyIsInNvdXJjZXNDb250ZW50IjpbIkBpbXBvcnQgJy4vLi4vLi4vLi4vLi4vYXNzZXRzL3Njc3MvZGVjaW1hbHMnLFxuJy4vLi4vLi4vLi4vLi4vYXNzZXRzL3Njc3MvZnVuY3Rpb25zJztcblxuaGVhZGVyIHtcbiAgICB3aWR0aDogMTAwdnc7XG4gICAgcG9zaXRpb246IGZpeGVkO1xuICAgIHRvcDogMzVweDtcbiAgICBsZWZ0OiAwO1xuICAgIHotaW5kZXg6IDk5OTtcbiAgICBAaW5jbHVkZSB0cmFuc2l0aW9uX2FsbCgwLjE1cywgbGluZWFyKTtcbiAgICAmLm1lbnUtZml4ZWQge1xuICAgICAgICB0b3A6IDA7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1LDI1NSwyNTUsMC43NSk7XG4gICAgfVxuICAgID4gZGl2IHtcbiAgICAgICAgaGVpZ2h0OiAzNXB4O1xuXG4gICAgICAgID4gZGl2IHtcbiAgICAgICAgICAgIGhlaWdodDogMzVweDtcbiAgICAgICAgICAgICYjbG9nby1ibG9jayB7XG4gICAgICAgICAgICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgICAgICAgICAgICAgaW1nIHt9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICAmI21lbnUtYmxvY2sge1xuICAgICAgICAgICAgICAgIGZsb2F0OiByaWdodDtcbiAgICAgICAgICAgICAgICB1bCB7XG4gICAgICAgICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgICAgICAgICBsaSB7XG4gICAgICAgICAgICAgICAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICAgICAgICAgICAgICAgICAgbGlzdC1zdHlsZTogbm9uZTtcbiAgICAgICAgICAgICAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgICAgICAgICAgIG1hcmdpbi1sZWZ0OiA2MHB4O1xuICAgICAgICAgICAgICAgICAgICAgICAgYSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgdGV4dC1kZWNvcmF0aW9uOiBub25lO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgb3BhY2l0eTogMC41O1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZvbnQtZmFtaWx5OiBcIk1vbnRzZXJyYXQtUmVndWxhclwiO1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZvbnQtc2l6ZTogMTNweDtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb2xvcjogIzAwMDAwMDtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBsZXR0ZXItc3BhY2luZzogMC4ycHg7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgbGluZS1oZWlnaHQ6IDM1cHg7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgICAgICAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxufVxuIiwiJG9yaWdpbmFsLXdpZHRoOiAxOTIwO1xuIFxuQGZ1bmN0aW9uIHB4LXRvLXZ3KCRweCkge1xuICBAcmV0dXJuICAoZGVjaW1hbC1yb3VuZCgoKCRweCAqIDEwMCkgLyAkb3JpZ2luYWwtd2lkdGgpLCAyKSkrdnc7XG59XG5cbiRvcmlnaW5hbC1oZWlnaHQ6IDEwODA7XG4gXG5AZnVuY3Rpb24gcHgtdG8tdmgoJHB4KSB7XG4gIEByZXR1cm4gIChkZWNpbWFsLXJvdW5kKCgoJHB4ICogMTAwKSAvICRvcmlnaW5hbC1oZWlnaHQpLCAyKSkrdmg7XG59XG5cblxuLy9ERVNLVE9QIDwxNDQwIFBYLVRPLVZXXG4kb3JpZ2luYWwtd2lkdGgtMTQ0MDogMTQ0MDtcbiBcbkBmdW5jdGlvbiBweC10by12dy0xNDQwKCRweCkge1xuICBAcmV0dXJuICAoZGVjaW1hbC1yb3VuZCgoKCRweCAqIDEwMCkgLyAkb3JpZ2luYWwtd2lkdGgtMTQ0MCksIDIpKSt2dztcbn1cblxuXG4vL1RBQkxFVCBQWC1UTy1WV1xuJG9yaWdpbmFsLXdpZHRoLW1vYmlsZTogMzc1O1xuIFxuQGZ1bmN0aW9uIHB4LXRvLXZ3LW1vYmlsZSgkcHgpIHtcbiAgQHJldHVybiAgKGRlY2ltYWwtcm91bmQoKCgkcHggKiAxMDApIC8gJG9yaWdpbmFsLXdpZHRoLW1vYmlsZSksIDIpKSt2dztcbn1cblxuXG4vL1RBQkxFVCBQWC1UTy1WV1xuJG9yaWdpbmFsLXdpZHRoLXRhYmxldDogNzY4O1xuIFxuQGZ1bmN0aW9uIHB4LXRvLXZ3LXRhYmxldCgkcHgpIHtcbiAgQHJldHVybiAgKGRlY2ltYWwtcm91bmQoKCgkcHggKiAxMDApIC8gJG9yaWdpbmFsLXdpZHRoLXRhYmxldCksIDIpKSt2dztcbn1cblxuXG4vL01peGluZyBcbkBtaXhpbiBib3JkZXItcmFkaXVzKCRyYWRpdXMpIHtcbiAgLXdlYmtpdC1ib3JkZXItcmFkaXVzOiAkcmFkaXVzO1xuICAgICAtbW96LWJvcmRlci1yYWRpdXM6ICRyYWRpdXM7XG4gICAgICAtbXMtYm9yZGVyLXJhZGl1czogJHJhZGl1cztcbiAgICAgICAgICBib3JkZXItcmFkaXVzOiAkcmFkaXVzO1xufVxuXG5AbWl4aW4gdHJhbnNmb3JtKCR0cmFuc2Zvcm1zKSB7XG4gICAgIC1tb3otdHJhbnNmb3JtOiAkdHJhbnNmb3JtcztcbiAgICAgICAtby10cmFuc2Zvcm06ICR0cmFuc2Zvcm1zO1xuICAgICAgLW1zLXRyYW5zZm9ybTogJHRyYW5zZm9ybXM7XG4gIC13ZWJraXQtdHJhbnNmb3JtOiAkdHJhbnNmb3JtcztcbiAgICAgICAgICB0cmFuc2Zvcm06ICR0cmFuc2Zvcm1zO1xufVxuLy8gcm90YXRlXG5AbWl4aW4gcm90YXRlICgkZGVnKSB7XG4gIEBpbmNsdWRlIHRyYW5zZm9ybShyb3RhdGUoI3skZGVnfWRlZykpO1xufVxuIFxuLy8gc2NhbGVcbkBtaXhpbiBzY2FsZSgkc2NhbGUpIHtcbiAgIEBpbmNsdWRlIHRyYW5zZm9ybShzY2FsZSgkc2NhbGUpKTtcbn0gXG4vLyB0cmFuc2xhdGVcbkBtaXhpbiB0cmFuc2xhdGUgKCR4LCAkeSkge1xuICAgQGluY2x1ZGUgdHJhbnNmb3JtKHRyYW5zbGF0ZSgkeCwgJHkpKTtcbn1cbi8vIHNrZXdcbkBtaXhpbiBza2V3ICgkeCwgJHkpIHtcbiAgIEBpbmNsdWRlIHRyYW5zZm9ybShza2V3KCN7JHh9ZGVnLCAjeyR5fWRlZykpO1xufVxuLy90cmFuc2Zvcm0gb3JpZ2luXG5AbWl4aW4gdHJhbnNmb3JtLW9yaWdpbiAoJG9yaWdpbikge1xuICAgIG1vei10cmFuc2Zvcm0tb3JpZ2luOiAkb3JpZ2luO1xuICAgICAgIC1vLXRyYW5zZm9ybS1vcmlnaW46ICRvcmlnaW47XG4gICAgICAtbXMtdHJhbnNmb3JtLW9yaWdpbjogJG9yaWdpbjtcbiAgLXdlYmtpdC10cmFuc2Zvcm0tb3JpZ2luOiAkb3JpZ2luO1xuICAgICAgICAgIHRyYW5zZm9ybS1vcmlnaW46ICRvcmlnaW47XG59XG5cbi8vdHJhbnNpdGlvbl9hbGxcbkBtaXhpbiB0cmFuc2l0aW9uX2FsbCgkdGltZSwgJGVhc2UpIHtcbiAgICAtd2Via2l0LXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAtbW96LXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAgLW1zLXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAgIC1vLXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAgICAgIHRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbn0vL3RyYW5zaXRpb25fYWxsXG5cbkBtaXhpbiB0cmFuc2l0aW9uX3Byb3AoJHByb3AsICR0aW1lLCAkZWFzZSkge1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbjogJHByb3AgJHRpbWUgJGVhc2U7XG4gICAgICAgLW1vei10cmFuc2l0aW9uOiAkcHJvcCAkdGltZSAkZWFzZTtcbiAgICAgICAgLW1zLXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlO1xuICAgICAgICAgLW8tdHJhbnNpdGlvbjogJHByb3AgJHRpbWUgJGVhc2U7XG4gICAgICAgICAgICB0cmFuc2l0aW9uOiAkcHJvcCAkdGltZSAkZWFzZTtcbn1cblxuQG1peGluIHRyYW5zaXRpb25fcHJvcF9kZWxheSgkcHJvcCwgJHRpbWUsICRlYXNlLCAkZGVsYXkpIHtcbiAgICAtd2Via2l0LXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAtbW96LXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAgLW1zLXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAgIC1vLXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAgICAgIHRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbn1cblxuXG5AbWl4aW4gdHJhbnNpdGlvbnMoJHguLi4pe1xuICAtd2Via2l0LXRyYW5zaXRpb246ICR4O1xuICAtbW96LXRyYW5zaXRpb246ICR4O1xuICAtbXMtdHJhbnNpdGlvbjogJHg7XG4gIC1vLXRyYW5zaXRpb246ICR4O1xuICB0cmFuc2l0aW9uOiAkeDtcbn1cblxuQG1peGluIGJhY2tncm91bmQtaW1hZ2UtdmVyc2lvbmVkKCRpbWFnZW4pIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcjeyRpbWFnZW59P3Y9I3skdmVyc2lvbl9zaGNrfScpO1xufSJdfQ== */"

/***/ }),

/***/ "./src/app/components/commons/header/header.component.ts":
/*!***************************************************************!*\
  !*** ./src/app/components/commons/header/header.component.ts ***!
  \***************************************************************/
/*! exports provided: HeaderComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "HeaderComponent", function() { return HeaderComponent; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _services_wp_wp_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../services/wp/wp.service */ "./src/app/services/wp/wp.service.ts");
/* harmony import */ var jquery__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! jquery */ "./node_modules/jquery/dist/jquery.js");
/* harmony import */ var jquery__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(jquery__WEBPACK_IMPORTED_MODULE_3__);




var HeaderComponent = /** @class */ (function () {
    function HeaderComponent(wpService) {
        this.wpService = wpService;
    }
    HeaderComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.wpService.getHeaderMenu()
            .subscribe(function (data) {
            _this.data = data;
        }, function (error) {
            console.error(error);
        });
        jquery__WEBPACK_IMPORTED_MODULE_3__(window).on('scroll', function () {
            if (jquery__WEBPACK_IMPORTED_MODULE_3__(window).scrollTop() > 0) {
                jquery__WEBPACK_IMPORTED_MODULE_3__('header').addClass('menu-fixed');
            }
            else {
                jquery__WEBPACK_IMPORTED_MODULE_3__('header').removeClass('menu-fixed');
            }
        });
    };
    HeaderComponent = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-header',
            template: __webpack_require__(/*! ./header.component.html */ "./src/app/components/commons/header/header.component.html"),
            styles: [__webpack_require__(/*! ./header.component.scss */ "./src/app/components/commons/header/header.component.scss")]
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_services_wp_wp_service__WEBPACK_IMPORTED_MODULE_2__["WpService"]])
    ], HeaderComponent);
    return HeaderComponent;
}());



/***/ }),

/***/ "./src/app/components/views/home/home.component.html":
/*!***********************************************************!*\
  !*** ./src/app/components/views/home/home.component.html ***!
  \***********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "<section id=\"home-bloque-1\" class=\"fullscreen-section\">\n    <div class=\"text-float\">\n        <div class=\"text-title\" [innerHTML]=\"data.bi_titulo\"></div>\n        <div class=\"text-content\" [innerHTML]=\"data.bi_texto\"></div>\n    </div>\n    <div class=\"icon-mouse\">\n        <img src=\"./assets/img/commons/icons/mouse-scroll@2x.png\" width=\"33\" />\n    </div>\n    <div class=\"background-img\" [ngStyle]=\"{'background-image':'url(' + data.bi_background + ')'}\"></div>\n</section>\n\n<section id=\"home-bloque-2\" class=\"fullwidth-section\">\n    <div class=\"container\">\n        <div class=\"text-title\" [innerHTML]=\"data.bii_titulo\"></div>\n        <div class=\"text-content\" [innerHTML]=\"data.bii_texto\"></div>\n    </div>\n    <div class=\"background-img\" [ngStyle]=\"{'background-image':'url(' + data.bii_background + ')'}\"></div>\n</section>\n\n<section id=\"home-bloque-3\" class=\"fullwidth-section\">\n\n    <div id=\"video-container\" class=\"container\">\n        <div class=\"text-title\" [innerHTML]=\"data.biii_titulo\"></div>\n        <div id=\"video-mockup\">\n            <video id=\"video-mockup-player\" controls poster=\"{{data.biii_captura_del_player}}\">\n                <source src=\"https://s3.eu-west-3.amazonaws.com/dojo.elements/kibo/video/flower.mp4\" type=\"video/mp4\" />\n                Video not supported.\n            </video>\n        </div>\n        <div id=\"video-button\">\n            <span  id=\"video-button-element\" class=\"button button-white\">{{data.biii_button_text}}</span>\n        </div>\n    </div>\n\n</section>\n\n<section id=\"home-bloque-4\" class=\"fullscreen-section\">\n\n    <div id=\"gallery-container\">\n        <div id=\"imagen-seleccionada\"></div>\n        <div id=\"lista-galeria\">\n            <ngx-slick-carousel class=\"carousel\" \n                            #slickModal=\"slick-carousel\" \n                            [config]=\"slideConfig\" \n                            (init)=\"slickInit($event)\"\n                            (breakpoint)=\"breakpoint($event)\"\n                            (afterChange)=\"afterChange($event)\"\n                            (beforeChange)=\"beforeChange($event)\">\n            <div ngxSlickItem *ngFor=\"let item of data.biv_galeria\" class=\"slide\">\n                <img src=\"{{ item.biv_imagen_galeria }}\" alt=\"\" width=\"100%\">\n            </div>\n            </ngx-slick-carousel>\n        </div>\n    </div>\n\n    \n\n\n</section>\n\n<section id=\"home-bloque-5\" class=\"fullwidth-section\">\n\n    <div class=\"container\">\n        <div class=\"columns columns-two columns-left\">\n            <div class=\"text-title\" [innerHTML]=\"data.bv_titulo\"></div>\n            <div class=\"text-subtitle\">{{data.bv_subtitulo}}</div>\n            <div class=\"text-content\" [innerHTML]=\"data.bv_texto\"></div>\n            <a class=\"button button-yellow\" href=\"#\">{{data.bv_button_text}}</a>\n        </div><!--\n        --><div class=\"columns columns-two columns-right\">\n            <div id=\"imagen-bloque\" [ngStyle]=\"{'background-image':'url(' + data.bv_imagen + ')'}\" ></div>\n        </div>\n\n    </div>\n\n</section>\n\n<section id=\"home-bloque-6\" class=\"fullwidth-section\">\n\n    <div id=\"formulario-container\" class=\"container\">\n        <div class=\"text-title\" [innerHTML]=\"data.bvi_titulo\"></div>\n        <div class=\"text-subtitle\" [innerHTML]=\"data.bvi_subtitulo\"></div>\n        <div class=\"share\">\n            <ul>\n                <li>\n                    <a href=\"{{data.bv_social_fb}}\" target=\"_blank\" rel=\"no-referal\"><img src=\"./assets/img/commons/social/facebook.svg\" width=\"33\" /></a>\n                </li>\n                <li>\n                    <a href=\"{{data.bv_social_tw}}\" target=\"_blank\" rel=\"no-referal\"><img src=\"./assets/img/commons/social/twitter.svg\" width=\"33\" /></a>\n                </li>\n                <li>\n                    <a href=\"{{data.bv_social_in}}\" target=\"_blank\" rel=\"no-referal\"><img src=\"./assets/img/commons/social/instagram.svg\" width=\"33\" /></a>\n                </li>\n            </ul>\n        </div>\n        <form>\n            <fieldset class=\"dos-columnas\">\n                <input type=\"text\" value=\"\" name=\"your-input-i\" id=\"your-input-i\" placeholder=\"Lorem ipsum\"/>\n            </fieldset><!--\n            --><fieldset class=\"dos-columnas\">\n                <input type=\"text\" value=\"\" name=\"your-input-ii\" id=\"your-input-ii\" placeholder=\"Lorem ipsum\"/>\n            </fieldset><!--\n            --><fieldset class=\"una-columna\">\n                <textarea name=\"your-input-iii\" id=\"your-input-iii\" placeholder=\"Lorem ipsum\"></textarea>\n            </fieldset><!--\n            --><fieldset class=\"una-columna\">\n                <button class=\"button button-white\">{{data.bvi_button_text}}</button>\n            </fieldset>\n        </form>\n    </div>\n\n</section>\n"

/***/ }),

/***/ "./src/app/components/views/home/home.component.scss":
/*!***********************************************************!*\
  !*** ./src/app/components/views/home/home.component.scss ***!
  \***********************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

module.exports = "@charset \"UTF-8\";\nsection.fullscreen-section {\n  width: 100vw;\n  height: 100vh;\n  position: relative; }\nsection.fullwidth-section {\n  width: 100vw;\n  height: auto;\n  position: relative; }\nsection .background-img {\n  position: absolute;\n  top: 0;\n  left: 0;\n  width: 100%;\n  height: 100%;\n  z-index: 1;\n  background: none no-repeat center center scroll;\n  background-size: cover; }\n#home-bloque-1 .text-float {\n  position: absolute;\n  width: 572px;\n  top: 50%;\n  left: 50%;\n  transform: translate(-100%, -50%);\n  z-index: 2; }\n#home-bloque-1 .text-float .text-title {\n    font-size: 80px;\n    color: #3A3A3A;\n    letter-spacing: 0.02px;\n    text-align: left;\n    line-height: 55px; }\n#home-bloque-1 .text-float .text-title strong {\n      font-family: 'Poppins-Black'; }\n#home-bloque-1 .text-float .text-content {\n    font-family: 'OpenSans-Regular';\n    padding-top: 15px;\n    font-size: 20px;\n    color: #3A3A3A;\n    letter-spacing: -0.5px;\n    text-align: left;\n    line-height: 25.88px; }\n#home-bloque-1 .icon-mouse {\n  position: absolute;\n  bottom: 50px;\n  left: 50%;\n  z-index: 9;\n  transform: translate(-50%, 0); }\n#home-bloque-2 {\n  overflow: hidden;\n  min-height: 729px; }\n#home-bloque-2 > div {\n    padding: 50px 0; }\n#home-bloque-2 > div > div {\n      color: #FFFFFF;\n      max-width: 572px; }\n#home-bloque-2 > div > div.text-title {\n        font-size: 50px;\n        z-index: 2; }\n#home-bloque-2 > div > div.text-content {\n        font-family: 'OpenSans-Regular';\n        font-size: 16px;\n        letter-spacing: -0.1px;\n        text-align: left;\n        line-height: 25px;\n        z-index: 2; }\n#home-bloque-2 > div > div.text-content p {\n          margin-top: 30px; }\n#home-bloque-3 {\n  background-color: #F2C478; }\n#home-bloque-3 #video-container {\n    padding: 100px 0; }\n#home-bloque-3 #video-container .text-title {\n      color: #FFFFFF;\n      font-size: 50px; }\n#home-bloque-3 #video-container #video-mockup {\n      margin-top: 50px;\n      display: block;\n      text-align: center; }\n#home-bloque-3 #video-container #video-mockup #video-mockup-player {\n        display: inline-block;\n        box-shadow: 11px 15px 12px -2px rgba(0, 0, 0, 0.5); }\n#home-bloque-3 #video-container #video-button {\n      margin-top: 30px;\n      display: block;\n      text-align: center; }\n#home-bloque-4 {\n  overflow: hidden; }\n#home-bloque-4 #gallery-container {\n    width: 100%;\n    height: 100%;\n    position: absolute;\n    left: 0;\n    top: 0; }\n#home-bloque-4 #gallery-container #imagen-seleccionada {\n      width: 100%;\n      height: calc(100% - 150px);\n      position: absolute;\n      left: 0;\n      top: 0;\n      background: none no-repeat center center scroll;\n      background-size: cover; }\n#home-bloque-4 #gallery-container #lista-galeria {\n      position: absolute;\n      left: 0;\n      height: auto;\n      width: 100vw;\n      bottom: 0; }\n#home-bloque-4 #gallery-container #lista-galeria .slick-slide img {\n        outline: none; }\n#home-bloque-4 #gallery-container #lista-galeria .slick-slide.slick-center img {\n        box-sizing: border-box;\n        border: 8px solid #F2C478; }\n#home-bloque-5 {\n  background: #FBFBFB;\n  padding: 50px 0; }\n#home-bloque-5 .text-title {\n    font-size: 50px; }\n#home-bloque-5 .text-subtitle {\n    font-family: 'OpenSans-Regular';\n    font-size: 16px;\n    color: #2C2C2C;\n    letter-spacing: 0px;\n    text-align: left;\n    line-height: 25px;\n    margin-top: 30px; }\n#home-bloque-5 .text-content {\n    font-family: Arial, Helvetica, sans-serif;\n    font-size: 12px;\n    color: #626262;\n    letter-spacing: 0.35px;\n    text-align: left;\n    line-height: 22px;\n    margin-top: 30px; }\n#home-bloque-5 .button {\n    margin-top: 30px; }\n#home-bloque-5 #imagen-bloque {\n    width: 630px;\n    height: 430px;\n    background: none no-repeat center center scroll;\n    background-size: cover; }\n#home-bloque-6 {\n  background: #F2C478;\n  padding: 50px 0; }\n#home-bloque-6 #formulario-container .text-title {\n    color: #FFFFFF; }\n#home-bloque-6 #formulario-container .text-subtitle {\n    margin: 15px 0;\n    color: #FFFFFF; }\n#home-bloque-6 #formulario-container .share {\n    margin-bottom: 10px; }\n#home-bloque-6 #formulario-container .share li {\n      display: inline-block;\n      margin-right: 15px; }\n#home-bloque-6 form fieldset  {\n    border: 0px;\n    display: inline-block; }\n#home-bloque-6 form fieldset .dos-columnas {\n      width: 50%; }\n#home-bloque-6 form fieldset .una-columna {\n      width: 100%; }\n#home-bloque-6 form fieldset  button {\n      float: right; }\n\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvY29tcG9uZW50cy92aWV3cy9ob21lL2hvbWUuY29tcG9uZW50LnNjc3MiLCIvVXNlcnMvZm9ydGl6d2ViL0RvY3VtZW50cy9QUk9ZRUNUT1MvRE9KTy9raWJvdGVzdC9hcHAva2lib3Rlc3Qva2liby1mcm9udC9zcmMvYXBwL2NvbXBvbmVudHMvdmlld3MvaG9tZS9ob21lLmNvbXBvbmVudC5zY3NzIiwiL1VzZXJzL2ZvcnRpendlYi9Eb2N1bWVudHMvUFJPWUVDVE9TL0RPSk8va2lib3Rlc3QvYXBwL2tpYm90ZXN0L2tpYm8tZnJvbnQvc3JjL2Fzc2V0cy9zY3NzL19mdW5jdGlvbnMuc2NzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQSxnQkFBZ0I7QUNJaEI7RUFHUSxZQUFZO0VBQ1osYUFBYTtFQUNiLGtCQUFrQixFQUFBO0FBTDFCO0VBUVEsWUFBWTtFQUNaLFlBQVk7RUFDWixrQkFBa0IsRUFBQTtBQVYxQjtFQWNRLGtCQUFrQjtFQUNsQixNQUFNO0VBQ04sT0FBTztFQUNQLFdBQVc7RUFDWCxZQUFZO0VBQ1osVUFBVTtFQUNWLCtDQUErQztFQUkvQyxzQkFBc0IsRUFBQTtBQUs5QjtFQUdRLGtCQUFrQjtFQUNsQixZQUFZO0VBQ1osUUFBUTtFQUNSLFNBQVM7RUNXUCxpQ0FhNkI7RUR0Qi9CLFVBQVUsRUFBQTtBQVJsQjtJQVVZLGVBQWU7SUFDZixjQUFjO0lBQ2Qsc0JBQXNCO0lBQ3RCLGdCQUFnQjtJQUNoQixpQkFBaUIsRUFBQTtBQWQ3QjtNQWdCZ0IsNEJBQTRCLEVBQUE7QUFoQjVDO0lBb0JZLCtCQUErQjtJQUMvQixpQkFBaUI7SUFDakIsZUFBZTtJQUNmLGNBQWM7SUFDZCxzQkFBc0I7SUFDdEIsZ0JBQWdCO0lBQ2hCLG9CQUFvQixFQUFBO0FBMUJoQztFQWdDUSxrQkFBa0I7RUFDbEIsWUFBWTtFQUNaLFNBQVM7RUFDVCxVQUFVO0VDbEJSLDZCQWE2QixFQUFBO0FEWXZDO0VBQ0ksZ0JBQWdCO0VBQ2hCLGlCQUFpQixFQUFBO0FBRnJCO0lBSVEsZUFBZSxFQUFBO0FBSnZCO01BTVksY0FBYztNQUNkLGdCQUFnQixFQUFBO0FBUDVCO1FBU2dCLGVBQWU7UUFDZixVQUFVLEVBQUE7QUFWMUI7UUFhZ0IsK0JBQStCO1FBQy9CLGVBQWU7UUFDZixzQkFBc0I7UUFDdEIsZ0JBQWdCO1FBQ2hCLGlCQUFpQjtRQUNqQixVQUFVLEVBQUE7QUFsQjFCO1VBb0JvQixnQkFBZ0IsRUFBQTtBQVFwQztFQUNJLHlCQUF5QixFQUFBO0FBRDdCO0lBR1EsZ0JBQWdCLEVBQUE7QUFIeEI7TUFLWSxjQUFjO01BQ2QsZUFBZSxFQUFBO0FBTjNCO01BU1ksZ0JBQWdCO01BQ2hCLGNBQWM7TUFDZCxrQkFBa0IsRUFBQTtBQVg5QjtRQWFnQixxQkFBcUI7UUFHckIsa0RBQStDLEVBQUE7QUFoQi9EO01Bb0JZLGdCQUFnQjtNQUNoQixjQUFjO01BQ2Qsa0JBQWtCLEVBQUE7QUFTOUI7RUFDSSxnQkFBZ0IsRUFBQTtBQURwQjtJQUdRLFdBQVk7SUFDWixZQUFZO0lBQ1osa0JBQWtCO0lBQ2xCLE9BQU87SUFDUCxNQUFNLEVBQUE7QUFQZDtNQVNZLFdBQVc7TUFDWCwwQkFBMEI7TUFDMUIsa0JBQWtCO01BQ2xCLE9BQU87TUFDUCxNQUFNO01BQ04sK0NBQStDO01BSS9DLHNCQUFzQixFQUFBO0FBbEJsQztNQXNCWSxrQkFBa0I7TUFDbEIsT0FBTztNQUNQLFlBQVk7TUFDWixZQUFZO01BQ1osU0FBUyxFQUFBO0FBMUJyQjtRQTZCb0IsYUFBYSxFQUFBO0FBN0JqQztRQWtDd0Isc0JBQXNCO1FBQ3RCLHlCQUF5QixFQUFBO0FBV2pEO0VBQ0ksbUJBQW1CO0VBQ25CLGVBQWUsRUFBQTtBQUZuQjtJQUlRLGVBQWUsRUFBQTtBQUp2QjtJQU9RLCtCQUErQjtJQUMvQixlQUFlO0lBQ2YsY0FBYztJQUNkLG1CQUFtQjtJQUNuQixnQkFBZ0I7SUFDaEIsaUJBQWlCO0lBQ2pCLGdCQUFnQixFQUFBO0FBYnhCO0lBZ0JRLHlDQUF5QztJQUN6QyxlQUFlO0lBQ2YsY0FBYztJQUNkLHNCQUFzQjtJQUN0QixnQkFBZ0I7SUFDaEIsaUJBQWlCO0lBQ2pCLGdCQUFnQixFQUFBO0FBdEJ4QjtJQXlCUSxnQkFBZ0IsRUFBQTtBQXpCeEI7SUE0QlEsWUFBWTtJQUNaLGFBQWE7SUFDYiwrQ0FBK0M7SUFJL0Msc0JBQXNCLEVBQUE7QUFNOUI7RUFDSSxtQkFBbUI7RUFDbkIsZUFBZSxFQUFBO0FBRm5CO0lBS1ksY0FBYyxFQUFBO0FBTDFCO0lBUVksY0FBYztJQUNkLGNBQWMsRUFBQTtBQVQxQjtJQVlZLG1CQUFtQixFQUFBO0FBWi9CO01BY2dCLHFCQUFxQjtNQUNyQixrQkFBa0IsRUFBQTtBQWZsQztJQXlCWSxXQUFXO0lBQ1gscUJBQXFCLEVBQUE7QUExQmpDO01BNEJnQixVQUFVLEVBQUE7QUE1QjFCO01BK0JnQixXQUFXLEVBQUE7QUEvQjNCO01Bd0NnQixZQUFZLEVBQUEiLCJmaWxlIjoic3JjL2FwcC9jb21wb25lbnRzL3ZpZXdzL2hvbWUvaG9tZS5jb21wb25lbnQuc2NzcyIsInNvdXJjZXNDb250ZW50IjpbIkBjaGFyc2V0IFwiVVRGLThcIjtcbnNlY3Rpb24uZnVsbHNjcmVlbi1zZWN0aW9uIHtcbiAgd2lkdGg6IDEwMHZ3O1xuICBoZWlnaHQ6IDEwMHZoO1xuICBwb3NpdGlvbjogcmVsYXRpdmU7IH1cblxuc2VjdGlvbi5mdWxsd2lkdGgtc2VjdGlvbiB7XG4gIHdpZHRoOiAxMDB2dztcbiAgaGVpZ2h0OiBhdXRvO1xuICBwb3NpdGlvbjogcmVsYXRpdmU7IH1cblxuc2VjdGlvbiAuYmFja2dyb3VuZC1pbWcge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHRvcDogMDtcbiAgbGVmdDogMDtcbiAgd2lkdGg6IDEwMCU7XG4gIGhlaWdodDogMTAwJTtcbiAgei1pbmRleDogMTtcbiAgYmFja2dyb3VuZDogbm9uZSBuby1yZXBlYXQgY2VudGVyIGNlbnRlciBzY3JvbGw7XG4gIC13ZWJraXQtYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgLW1vei1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAtby1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICBiYWNrZ3JvdW5kLXNpemU6IGNvdmVyOyB9XG5cbiNob21lLWJsb3F1ZS0xIC50ZXh0LWZsb2F0IHtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICB3aWR0aDogNTcycHg7XG4gIHRvcDogNTAlO1xuICBsZWZ0OiA1MCU7XG4gIC1tb3otdHJhbnNmb3JtOiB0cmFuc2xhdGUoLTEwMCUsIC01MCUpO1xuICAtby10cmFuc2Zvcm06IHRyYW5zbGF0ZSgtMTAwJSwgLTUwJSk7XG4gIC1tcy10cmFuc2Zvcm06IHRyYW5zbGF0ZSgtMTAwJSwgLTUwJSk7XG4gIC13ZWJraXQtdHJhbnNmb3JtOiB0cmFuc2xhdGUoLTEwMCUsIC01MCUpO1xuICB0cmFuc2Zvcm06IHRyYW5zbGF0ZSgtMTAwJSwgLTUwJSk7XG4gIHotaW5kZXg6IDI7IH1cbiAgI2hvbWUtYmxvcXVlLTEgLnRleHQtZmxvYXQgLnRleHQtdGl0bGUge1xuICAgIGZvbnQtc2l6ZTogODBweDtcbiAgICBjb2xvcjogIzNBM0EzQTtcbiAgICBsZXR0ZXItc3BhY2luZzogMC4wMnB4O1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgbGluZS1oZWlnaHQ6IDU1cHg7IH1cbiAgICAjaG9tZS1ibG9xdWUtMSAudGV4dC1mbG9hdCAudGV4dC10aXRsZSBzdHJvbmcge1xuICAgICAgZm9udC1mYW1pbHk6ICdQb3BwaW5zLUJsYWNrJzsgfVxuICAjaG9tZS1ibG9xdWUtMSAudGV4dC1mbG9hdCAudGV4dC1jb250ZW50IHtcbiAgICBmb250LWZhbWlseTogJ09wZW5TYW5zLVJlZ3VsYXInO1xuICAgIHBhZGRpbmctdG9wOiAxNXB4O1xuICAgIGZvbnQtc2l6ZTogMjBweDtcbiAgICBjb2xvcjogIzNBM0EzQTtcbiAgICBsZXR0ZXItc3BhY2luZzogLTAuNXB4O1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgbGluZS1oZWlnaHQ6IDI1Ljg4cHg7IH1cblxuI2hvbWUtYmxvcXVlLTEgLmljb24tbW91c2Uge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIGJvdHRvbTogNTBweDtcbiAgbGVmdDogNTAlO1xuICB6LWluZGV4OiA5O1xuICAtbW96LXRyYW5zZm9ybTogdHJhbnNsYXRlKC01MCUsIDApO1xuICAtby10cmFuc2Zvcm06IHRyYW5zbGF0ZSgtNTAlLCAwKTtcbiAgLW1zLXRyYW5zZm9ybTogdHJhbnNsYXRlKC01MCUsIDApO1xuICAtd2Via2l0LXRyYW5zZm9ybTogdHJhbnNsYXRlKC01MCUsIDApO1xuICB0cmFuc2Zvcm06IHRyYW5zbGF0ZSgtNTAlLCAwKTsgfVxuXG4jaG9tZS1ibG9xdWUtMiB7XG4gIG92ZXJmbG93OiBoaWRkZW47XG4gIG1pbi1oZWlnaHQ6IDcyOXB4OyB9XG4gICNob21lLWJsb3F1ZS0yID4gZGl2IHtcbiAgICBwYWRkaW5nOiA1MHB4IDA7IH1cbiAgICAjaG9tZS1ibG9xdWUtMiA+IGRpdiA+IGRpdiB7XG4gICAgICBjb2xvcjogI0ZGRkZGRjtcbiAgICAgIG1heC13aWR0aDogNTcycHg7IH1cbiAgICAgICNob21lLWJsb3F1ZS0yID4gZGl2ID4gZGl2LnRleHQtdGl0bGUge1xuICAgICAgICBmb250LXNpemU6IDUwcHg7XG4gICAgICAgIHotaW5kZXg6IDI7IH1cbiAgICAgICNob21lLWJsb3F1ZS0yID4gZGl2ID4gZGl2LnRleHQtY29udGVudCB7XG4gICAgICAgIGZvbnQtZmFtaWx5OiAnT3BlblNhbnMtUmVndWxhcic7XG4gICAgICAgIGZvbnQtc2l6ZTogMTZweDtcbiAgICAgICAgbGV0dGVyLXNwYWNpbmc6IC0wLjFweDtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgbGluZS1oZWlnaHQ6IDI1cHg7XG4gICAgICAgIHotaW5kZXg6IDI7IH1cbiAgICAgICAgI2hvbWUtYmxvcXVlLTIgPiBkaXYgPiBkaXYudGV4dC1jb250ZW50IHAge1xuICAgICAgICAgIG1hcmdpbi10b3A6IDMwcHg7IH1cblxuI2hvbWUtYmxvcXVlLTMge1xuICBiYWNrZ3JvdW5kLWNvbG9yOiAjRjJDNDc4OyB9XG4gICNob21lLWJsb3F1ZS0zICN2aWRlby1jb250YWluZXIge1xuICAgIHBhZGRpbmc6IDEwMHB4IDA7IH1cbiAgICAjaG9tZS1ibG9xdWUtMyAjdmlkZW8tY29udGFpbmVyIC50ZXh0LXRpdGxlIHtcbiAgICAgIGNvbG9yOiAjRkZGRkZGO1xuICAgICAgZm9udC1zaXplOiA1MHB4OyB9XG4gICAgI2hvbWUtYmxvcXVlLTMgI3ZpZGVvLWNvbnRhaW5lciAjdmlkZW8tbW9ja3VwIHtcbiAgICAgIG1hcmdpbi10b3A6IDUwcHg7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjsgfVxuICAgICAgI2hvbWUtYmxvcXVlLTMgI3ZpZGVvLWNvbnRhaW5lciAjdmlkZW8tbW9ja3VwICN2aWRlby1tb2NrdXAtcGxheWVyIHtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAtd2Via2l0LWJveC1zaGFkb3c6IDExcHggMTVweCAxMnB4IC0ycHggcmdiYSgwLCAwLCAwLCAwLjUpO1xuICAgICAgICAtbW96LWJveC1zaGFkb3c6IDExcHggMTVweCAxMnB4IC0ycHggcmdiYSgwLCAwLCAwLCAwLjUpO1xuICAgICAgICBib3gtc2hhZG93OiAxMXB4IDE1cHggMTJweCAtMnB4IHJnYmEoMCwgMCwgMCwgMC41KTsgfVxuICAgICNob21lLWJsb3F1ZS0zICN2aWRlby1jb250YWluZXIgI3ZpZGVvLWJ1dHRvbiB7XG4gICAgICBtYXJnaW4tdG9wOiAzMHB4O1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7IH1cblxuI2hvbWUtYmxvcXVlLTQge1xuICBvdmVyZmxvdzogaGlkZGVuOyB9XG4gICNob21lLWJsb3F1ZS00ICNnYWxsZXJ5LWNvbnRhaW5lciB7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgaGVpZ2h0OiAxMDAlO1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiAwO1xuICAgIHRvcDogMDsgfVxuICAgICNob21lLWJsb3F1ZS00ICNnYWxsZXJ5LWNvbnRhaW5lciAjaW1hZ2VuLXNlbGVjY2lvbmFkYSB7XG4gICAgICB3aWR0aDogMTAwJTtcbiAgICAgIGhlaWdodDogY2FsYygxMDAlIC0gMTUwcHgpO1xuICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgbGVmdDogMDtcbiAgICAgIHRvcDogMDtcbiAgICAgIGJhY2tncm91bmQ6IG5vbmUgbm8tcmVwZWF0IGNlbnRlciBjZW50ZXIgc2Nyb2xsO1xuICAgICAgLXdlYmtpdC1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgICAgLW1vei1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgICAgLW8tYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgICAgIGJhY2tncm91bmQtc2l6ZTogY292ZXI7IH1cbiAgICAjaG9tZS1ibG9xdWUtNCAjZ2FsbGVyeS1jb250YWluZXIgI2xpc3RhLWdhbGVyaWEge1xuICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgbGVmdDogMDtcbiAgICAgIGhlaWdodDogYXV0bztcbiAgICAgIHdpZHRoOiAxMDB2dztcbiAgICAgIGJvdHRvbTogMDsgfVxuICAgICAgI2hvbWUtYmxvcXVlLTQgI2dhbGxlcnktY29udGFpbmVyICNsaXN0YS1nYWxlcmlhIC5zbGljay1zbGlkZSBpbWcge1xuICAgICAgICBvdXRsaW5lOiBub25lOyB9XG4gICAgICAjaG9tZS1ibG9xdWUtNCAjZ2FsbGVyeS1jb250YWluZXIgI2xpc3RhLWdhbGVyaWEgLnNsaWNrLXNsaWRlLnNsaWNrLWNlbnRlciBpbWcge1xuICAgICAgICBib3gtc2l6aW5nOiBib3JkZXItYm94O1xuICAgICAgICBib3JkZXI6IDhweCBzb2xpZCAjRjJDNDc4OyB9XG5cbiNob21lLWJsb3F1ZS01IHtcbiAgYmFja2dyb3VuZDogI0ZCRkJGQjtcbiAgcGFkZGluZzogNTBweCAwOyB9XG4gICNob21lLWJsb3F1ZS01IC50ZXh0LXRpdGxlIHtcbiAgICBmb250LXNpemU6IDUwcHg7IH1cbiAgI2hvbWUtYmxvcXVlLTUgLnRleHQtc3VidGl0bGUge1xuICAgIGZvbnQtZmFtaWx5OiAnT3BlblNhbnMtUmVndWxhcic7XG4gICAgZm9udC1zaXplOiAxNnB4O1xuICAgIGNvbG9yOiAjMkMyQzJDO1xuICAgIGxldHRlci1zcGFjaW5nOiAwcHg7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBsaW5lLWhlaWdodDogMjVweDtcbiAgICBtYXJnaW4tdG9wOiAzMHB4OyB9XG4gICNob21lLWJsb3F1ZS01IC50ZXh0LWNvbnRlbnQge1xuICAgIGZvbnQtZmFtaWx5OiBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmO1xuICAgIGZvbnQtc2l6ZTogMTJweDtcbiAgICBjb2xvcjogIzYyNjI2MjtcbiAgICBsZXR0ZXItc3BhY2luZzogMC4zNXB4O1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgbGluZS1oZWlnaHQ6IDIycHg7XG4gICAgbWFyZ2luLXRvcDogMzBweDsgfVxuICAjaG9tZS1ibG9xdWUtNSAuYnV0dG9uIHtcbiAgICBtYXJnaW4tdG9wOiAzMHB4OyB9XG4gICNob21lLWJsb3F1ZS01ICNpbWFnZW4tYmxvcXVlIHtcbiAgICB3aWR0aDogNjMwcHg7XG4gICAgaGVpZ2h0OiA0MzBweDtcbiAgICBiYWNrZ3JvdW5kOiBub25lIG5vLXJlcGVhdCBjZW50ZXIgY2VudGVyIHNjcm9sbDtcbiAgICAtd2Via2l0LWJhY2tncm91bmQtc2l6ZTogY292ZXI7XG4gICAgLW1vei1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgIC1vLWJhY2tncm91bmQtc2l6ZTogY292ZXI7XG4gICAgYmFja2dyb3VuZC1zaXplOiBjb3ZlcjsgfVxuXG4jaG9tZS1ibG9xdWUtNiB7XG4gIGJhY2tncm91bmQ6ICNGMkM0Nzg7XG4gIHBhZGRpbmc6IDUwcHggMDsgfVxuICAjaG9tZS1ibG9xdWUtNiAjZm9ybXVsYXJpby1jb250YWluZXIgLnRleHQtdGl0bGUge1xuICAgIGNvbG9yOiAjRkZGRkZGOyB9XG4gICNob21lLWJsb3F1ZS02ICNmb3JtdWxhcmlvLWNvbnRhaW5lciAudGV4dC1zdWJ0aXRsZSB7XG4gICAgbWFyZ2luOiAxNXB4IDA7XG4gICAgY29sb3I6ICNGRkZGRkY7IH1cbiAgI2hvbWUtYmxvcXVlLTYgI2Zvcm11bGFyaW8tY29udGFpbmVyIC5zaGFyZSB7XG4gICAgbWFyZ2luLWJvdHRvbTogMTBweDsgfVxuICAgICNob21lLWJsb3F1ZS02ICNmb3JtdWxhcmlvLWNvbnRhaW5lciAuc2hhcmUgbGkge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgbWFyZ2luLXJpZ2h0OiAxNXB4OyB9XG4gICNob21lLWJsb3F1ZS02IGZvcm0gZmllbGRzZXTCoCB7XG4gICAgYm9yZGVyOiAwcHg7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrOyB9XG4gICAgI2hvbWUtYmxvcXVlLTYgZm9ybSBmaWVsZHNldMKgLmRvcy1jb2x1bW5hcyB7XG4gICAgICB3aWR0aDogNTAlOyB9XG4gICAgI2hvbWUtYmxvcXVlLTYgZm9ybSBmaWVsZHNldMKgLnVuYS1jb2x1bW5hIHtcbiAgICAgIHdpZHRoOiAxMDAlOyB9XG4gICAgI2hvbWUtYmxvcXVlLTYgZm9ybSBmaWVsZHNldMKgIGJ1dHRvbiB7XG4gICAgICBmbG9hdDogcmlnaHQ7IH1cbiIsIkBpbXBvcnQgJy4vLi4vLi4vLi4vLi4vYXNzZXRzL3Njc3MvZGVjaW1hbHMnLFxuICAgICAgICAnLi8uLi8uLi8uLi8uLi9hc3NldHMvc2Nzcy9mdW5jdGlvbnMnO1xuXG5cbnNlY3Rpb24ge1xuXG4gICAgJi5mdWxsc2NyZWVuLXNlY3Rpb24ge1xuICAgICAgICB3aWR0aDogMTAwdnc7XG4gICAgICAgIGhlaWdodDogMTAwdmg7XG4gICAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICB9XG4gICAgJi5mdWxsd2lkdGgtc2VjdGlvbiB7XG4gICAgICAgIHdpZHRoOiAxMDB2dztcbiAgICAgICAgaGVpZ2h0OiBhdXRvO1xuICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgfVxuXG4gICAgLmJhY2tncm91bmQtaW1nIHtcbiAgICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgICB0b3A6IDA7XG4gICAgICAgIGxlZnQ6IDA7XG4gICAgICAgIHdpZHRoOiAxMDAlO1xuICAgICAgICBoZWlnaHQ6IDEwMCU7XG4gICAgICAgIHotaW5kZXg6IDE7XG4gICAgICAgIGJhY2tncm91bmQ6IG5vbmUgbm8tcmVwZWF0IGNlbnRlciBjZW50ZXIgc2Nyb2xsO1xuICAgICAgICAtd2Via2l0LWJhY2tncm91bmQtc2l6ZTogY292ZXI7XG4gICAgICAgIC1tb3otYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgICAgICAgLW8tYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgICAgICAgYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgICB9XG5cbn1cblxuI2hvbWUtYmxvcXVlLTEge1xuXG4gICAgLnRleHQtZmxvYXQge1xuICAgICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICAgIHdpZHRoOiA1NzJweDtcbiAgICAgICAgdG9wOiA1MCU7XG4gICAgICAgIGxlZnQ6IDUwJTtcbiAgICAgICAgQGluY2x1ZGUgdHJhbnNsYXRlKC0xMDAlLCAtNTAlKTtcbiAgICAgICAgei1pbmRleDogMjtcbiAgICAgICAgLnRleHQtdGl0bGUge1xuICAgICAgICAgICAgZm9udC1zaXplOiA4MHB4O1xuICAgICAgICAgICAgY29sb3I6ICMzQTNBM0E7XG4gICAgICAgICAgICBsZXR0ZXItc3BhY2luZzogMC4wMnB4O1xuICAgICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgICAgIGxpbmUtaGVpZ2h0OiA1NXB4O1xuICAgICAgICAgICAgc3Ryb25nIHtcbiAgICAgICAgICAgICAgICBmb250LWZhbWlseTogJ1BvcHBpbnMtQmxhY2snO1xuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIC50ZXh0LWNvbnRlbnQge1xuICAgICAgICAgICAgZm9udC1mYW1pbHk6ICdPcGVuU2Fucy1SZWd1bGFyJztcbiAgICAgICAgICAgIHBhZGRpbmctdG9wOiAxNXB4O1xuICAgICAgICAgICAgZm9udC1zaXplOiAyMHB4O1xuICAgICAgICAgICAgY29sb3I6ICMzQTNBM0E7XG4gICAgICAgICAgICBsZXR0ZXItc3BhY2luZzogLTAuNXB4O1xuICAgICAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgICAgIGxpbmUtaGVpZ2h0OiAyNS44OHB4O1xuICAgICAgICB9XG5cbiAgICB9XG5cbiAgICAuaWNvbi1tb3VzZSB7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgYm90dG9tOiA1MHB4O1xuICAgICAgICBsZWZ0OiA1MCU7XG4gICAgICAgIHotaW5kZXg6IDk7XG4gICAgICAgIEBpbmNsdWRlIHRyYW5zbGF0ZSgtNTAlLCAwKTtcbiAgICB9XG5cbn1cblxuXG4jaG9tZS1ibG9xdWUtMiB7XG4gICAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgICBtaW4taGVpZ2h0OiA3MjlweDtcbiAgICA+IGRpdiB7XG4gICAgICAgIHBhZGRpbmc6IDUwcHggMDtcbiAgICAgICAgPiBkaXYge1xuICAgICAgICAgICAgY29sb3I6ICNGRkZGRkY7XG4gICAgICAgICAgICBtYXgtd2lkdGg6IDU3MnB4O1xuICAgICAgICAgICAgJi50ZXh0LXRpdGxlIHtcbiAgICAgICAgICAgICAgICBmb250LXNpemU6IDUwcHg7XG4gICAgICAgICAgICAgICAgei1pbmRleDogMjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgICYudGV4dC1jb250ZW50IHtcbiAgICAgICAgICAgICAgICBmb250LWZhbWlseTogJ09wZW5TYW5zLVJlZ3VsYXInO1xuICAgICAgICAgICAgICAgIGZvbnQtc2l6ZTogMTZweDtcbiAgICAgICAgICAgICAgICBsZXR0ZXItc3BhY2luZzogLTAuMXB4O1xuICAgICAgICAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgICAgICAgICAgbGluZS1oZWlnaHQ6IDI1cHg7XG4gICAgICAgICAgICAgICAgei1pbmRleDogMjtcbiAgICAgICAgICAgICAgICBwIHtcbiAgICAgICAgICAgICAgICAgICAgbWFyZ2luLXRvcDogMzBweDtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG59XG5cblxuI2hvbWUtYmxvcXVlLTMge1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNGMkM0Nzg7XG4gICAgI3ZpZGVvLWNvbnRhaW5lciB7XG4gICAgICAgIHBhZGRpbmc6IDEwMHB4IDA7XG4gICAgICAgIC50ZXh0LXRpdGxlIHtcbiAgICAgICAgICAgIGNvbG9yOiAjRkZGRkZGO1xuICAgICAgICAgICAgZm9udC1zaXplOiA1MHB4O1xuICAgICAgICB9XG4gICAgICAgICN2aWRlby1tb2NrdXAge1xuICAgICAgICAgICAgbWFyZ2luLXRvcDogNTBweDtcbiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgICAgICAgI3ZpZGVvLW1vY2t1cC1wbGF5ZXIge1xuICAgICAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgICAtd2Via2l0LWJveC1zaGFkb3c6IDExcHggMTVweCAxMnB4IC0ycHggcmdiYSgwLDAsMCwwLjUpO1xuICAgICAgICAgICAgICAgIC1tb3otYm94LXNoYWRvdzogMTFweCAxNXB4IDEycHggLTJweCByZ2JhKDAsMCwwLDAuNSk7XG4gICAgICAgICAgICAgICAgYm94LXNoYWRvdzogMTFweCAxNXB4IDEycHggLTJweCByZ2JhKDAsMCwwLDAuNSk7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgI3ZpZGVvLWJ1dHRvbiB7XG4gICAgICAgICAgICBtYXJnaW4tdG9wOiAzMHB4O1xuICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgICAgICAjdmlkZW8tYnV0dG9uLWVsZW1lbnQge1xuXG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG59XG5cblxuI2hvbWUtYmxvcXVlLTQge1xuICAgIG92ZXJmbG93OiBoaWRkZW47XG4gICAgI2dhbGxlcnktY29udGFpbmVyIHtcbiAgICAgICAgd2lkdGggOiAxMDAlO1xuICAgICAgICBoZWlnaHQ6IDEwMCU7XG4gICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgbGVmdDogMDtcbiAgICAgICAgdG9wOiAwO1xuICAgICAgICAjaW1hZ2VuLXNlbGVjY2lvbmFkYSB7XG4gICAgICAgICAgICB3aWR0aDogMTAwJTtcbiAgICAgICAgICAgIGhlaWdodDogY2FsYygxMDAlIC0gMTUwcHgpO1xuICAgICAgICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgICAgICAgbGVmdDogMDtcbiAgICAgICAgICAgIHRvcDogMDtcbiAgICAgICAgICAgIGJhY2tncm91bmQ6IG5vbmUgbm8tcmVwZWF0IGNlbnRlciBjZW50ZXIgc2Nyb2xsO1xuICAgICAgICAgICAgLXdlYmtpdC1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgICAgICAgICAgLW1vei1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgICAgICAgICAgLW8tYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgICAgICAgICAgIGJhY2tncm91bmQtc2l6ZTogY292ZXI7XG4gICAgICAgIH1cbiAgICAgICAgI2xpc3RhLWdhbGVyaWEge1xuXG4gICAgICAgICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICAgICAgICBsZWZ0OiAwO1xuICAgICAgICAgICAgaGVpZ2h0OiBhdXRvO1xuICAgICAgICAgICAgd2lkdGg6IDEwMHZ3O1xuICAgICAgICAgICAgYm90dG9tOiAwO1xuICAgICAgICAgICAgLnNsaWNrLXNsaWRlIHtcbiAgICAgICAgICAgICAgICBpbWcge1xuICAgICAgICAgICAgICAgICAgICBvdXRsaW5lOiBub25lO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAmLnNsaWNrLWNlbnRlciB7XG5cbiAgICAgICAgICAgICAgICAgICAgaW1nIHtcbiAgICAgICAgICAgICAgICAgICAgICAgIGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG4gICAgICAgICAgICAgICAgICAgICAgICBib3JkZXI6IDhweCBzb2xpZCAjRjJDNDc4O1xuICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICB9XG4gICAgfVxuXG5cbn1cblxuXG4jaG9tZS1ibG9xdWUtNSB7XG4gICAgYmFja2dyb3VuZDogI0ZCRkJGQjtcbiAgICBwYWRkaW5nOiA1MHB4IDA7XG4gICAgLnRleHQtdGl0bGUge1xuICAgICAgICBmb250LXNpemU6IDUwcHg7XG4gICAgfVxuICAgIC50ZXh0LXN1YnRpdGxlIHtcbiAgICAgICAgZm9udC1mYW1pbHk6ICdPcGVuU2Fucy1SZWd1bGFyJztcbiAgICAgICAgZm9udC1zaXplOiAxNnB4O1xuICAgICAgICBjb2xvcjogIzJDMkMyQztcbiAgICAgICAgbGV0dGVyLXNwYWNpbmc6IDBweDtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgbGluZS1oZWlnaHQ6IDI1cHg7XG4gICAgICAgIG1hcmdpbi10b3A6IDMwcHg7XG4gICAgfVxuICAgIC50ZXh0LWNvbnRlbnQge1xuICAgICAgICBmb250LWZhbWlseTogQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjtcbiAgICAgICAgZm9udC1zaXplOiAxMnB4O1xuICAgICAgICBjb2xvcjogIzYyNjI2MjtcbiAgICAgICAgbGV0dGVyLXNwYWNpbmc6IDAuMzVweDtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgbGluZS1oZWlnaHQ6IDIycHg7XG4gICAgICAgIG1hcmdpbi10b3A6IDMwcHg7XG4gICAgfVxuICAgIC5idXR0b24ge1xuICAgICAgICBtYXJnaW4tdG9wOiAzMHB4O1xuICAgIH1cbiAgICAjaW1hZ2VuLWJsb3F1ZSB7XG4gICAgICAgIHdpZHRoOiA2MzBweDtcbiAgICAgICAgaGVpZ2h0OiA0MzBweDtcbiAgICAgICAgYmFja2dyb3VuZDogbm9uZSBuby1yZXBlYXQgY2VudGVyIGNlbnRlciBzY3JvbGw7XG4gICAgICAgIC13ZWJraXQtYmFja2dyb3VuZC1zaXplOiBjb3ZlcjtcbiAgICAgICAgLW1vei1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgICAgICAtby1iYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgICAgICBiYWNrZ3JvdW5kLXNpemU6IGNvdmVyO1xuICAgIH1cblxufVxuXG5cbiNob21lLWJsb3F1ZS02IHtcbiAgICBiYWNrZ3JvdW5kOiAjRjJDNDc4O1xuICAgIHBhZGRpbmc6IDUwcHggMDtcbiAgICAjZm9ybXVsYXJpby1jb250YWluZXIge1xuICAgICAgICAudGV4dC10aXRsZSB7XG4gICAgICAgICAgICBjb2xvcjogI0ZGRkZGRjtcbiAgICAgICAgfVxuICAgICAgICAudGV4dC1zdWJ0aXRsZSB7XG4gICAgICAgICAgICBtYXJnaW46IDE1cHggMDtcbiAgICAgICAgICAgIGNvbG9yOiAjRkZGRkZGO1xuICAgICAgICB9XG4gICAgICAgIC5zaGFyZSB7XG4gICAgICAgICAgICBtYXJnaW4tYm90dG9tOiAxMHB4O1xuICAgICAgICAgICAgbGkge1xuICAgICAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgICBtYXJnaW4tcmlnaHQ6IDE1cHg7XG4gICAgICAgICAgICAgICAgYSB7fVxuICAgICAgICAgICAgfVxuICAgICAgICAgICAgI2ZiLXNoYXJle31cbiAgICAgICAgICAgICN0dy1zaGFyZXt9XG4gICAgICAgICAgICAjaW4tc2hhcmV7fVxuICAgICAgICB9XG4gICAgfVxuICAgIGZvcm17XG4gICAgICAgIGZpZWxkc2V0wqB7XG4gICAgICAgICAgICBib3JkZXI6IDBweDtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICAgICYuZG9zLWNvbHVtbmFzIHtcbiAgICAgICAgICAgICAgICB3aWR0aDogNTAlO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgJi51bmEtY29sdW1uYSB7XG4gICAgICAgICAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBpbnB1dCB7XG5cbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHRleHRhcmVhIHtcblxuICAgICAgICAgICAgfVxuICAgICAgICAgICAgYnV0dG9uIHtcbiAgICAgICAgICAgICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICB9XG59IiwiJG9yaWdpbmFsLXdpZHRoOiAxOTIwO1xuIFxuQGZ1bmN0aW9uIHB4LXRvLXZ3KCRweCkge1xuICBAcmV0dXJuICAoZGVjaW1hbC1yb3VuZCgoKCRweCAqIDEwMCkgLyAkb3JpZ2luYWwtd2lkdGgpLCAyKSkrdnc7XG59XG5cbiRvcmlnaW5hbC1oZWlnaHQ6IDEwODA7XG4gXG5AZnVuY3Rpb24gcHgtdG8tdmgoJHB4KSB7XG4gIEByZXR1cm4gIChkZWNpbWFsLXJvdW5kKCgoJHB4ICogMTAwKSAvICRvcmlnaW5hbC1oZWlnaHQpLCAyKSkrdmg7XG59XG5cblxuLy9ERVNLVE9QIDwxNDQwIFBYLVRPLVZXXG4kb3JpZ2luYWwtd2lkdGgtMTQ0MDogMTQ0MDtcbiBcbkBmdW5jdGlvbiBweC10by12dy0xNDQwKCRweCkge1xuICBAcmV0dXJuICAoZGVjaW1hbC1yb3VuZCgoKCRweCAqIDEwMCkgLyAkb3JpZ2luYWwtd2lkdGgtMTQ0MCksIDIpKSt2dztcbn1cblxuXG4vL1RBQkxFVCBQWC1UTy1WV1xuJG9yaWdpbmFsLXdpZHRoLW1vYmlsZTogMzc1O1xuIFxuQGZ1bmN0aW9uIHB4LXRvLXZ3LW1vYmlsZSgkcHgpIHtcbiAgQHJldHVybiAgKGRlY2ltYWwtcm91bmQoKCgkcHggKiAxMDApIC8gJG9yaWdpbmFsLXdpZHRoLW1vYmlsZSksIDIpKSt2dztcbn1cblxuXG4vL1RBQkxFVCBQWC1UTy1WV1xuJG9yaWdpbmFsLXdpZHRoLXRhYmxldDogNzY4O1xuIFxuQGZ1bmN0aW9uIHB4LXRvLXZ3LXRhYmxldCgkcHgpIHtcbiAgQHJldHVybiAgKGRlY2ltYWwtcm91bmQoKCgkcHggKiAxMDApIC8gJG9yaWdpbmFsLXdpZHRoLXRhYmxldCksIDIpKSt2dztcbn1cblxuXG4vL01peGluZyBcbkBtaXhpbiBib3JkZXItcmFkaXVzKCRyYWRpdXMpIHtcbiAgLXdlYmtpdC1ib3JkZXItcmFkaXVzOiAkcmFkaXVzO1xuICAgICAtbW96LWJvcmRlci1yYWRpdXM6ICRyYWRpdXM7XG4gICAgICAtbXMtYm9yZGVyLXJhZGl1czogJHJhZGl1cztcbiAgICAgICAgICBib3JkZXItcmFkaXVzOiAkcmFkaXVzO1xufVxuXG5AbWl4aW4gdHJhbnNmb3JtKCR0cmFuc2Zvcm1zKSB7XG4gICAgIC1tb3otdHJhbnNmb3JtOiAkdHJhbnNmb3JtcztcbiAgICAgICAtby10cmFuc2Zvcm06ICR0cmFuc2Zvcm1zO1xuICAgICAgLW1zLXRyYW5zZm9ybTogJHRyYW5zZm9ybXM7XG4gIC13ZWJraXQtdHJhbnNmb3JtOiAkdHJhbnNmb3JtcztcbiAgICAgICAgICB0cmFuc2Zvcm06ICR0cmFuc2Zvcm1zO1xufVxuLy8gcm90YXRlXG5AbWl4aW4gcm90YXRlICgkZGVnKSB7XG4gIEBpbmNsdWRlIHRyYW5zZm9ybShyb3RhdGUoI3skZGVnfWRlZykpO1xufVxuIFxuLy8gc2NhbGVcbkBtaXhpbiBzY2FsZSgkc2NhbGUpIHtcbiAgIEBpbmNsdWRlIHRyYW5zZm9ybShzY2FsZSgkc2NhbGUpKTtcbn0gXG4vLyB0cmFuc2xhdGVcbkBtaXhpbiB0cmFuc2xhdGUgKCR4LCAkeSkge1xuICAgQGluY2x1ZGUgdHJhbnNmb3JtKHRyYW5zbGF0ZSgkeCwgJHkpKTtcbn1cbi8vIHNrZXdcbkBtaXhpbiBza2V3ICgkeCwgJHkpIHtcbiAgIEBpbmNsdWRlIHRyYW5zZm9ybShza2V3KCN7JHh9ZGVnLCAjeyR5fWRlZykpO1xufVxuLy90cmFuc2Zvcm0gb3JpZ2luXG5AbWl4aW4gdHJhbnNmb3JtLW9yaWdpbiAoJG9yaWdpbikge1xuICAgIG1vei10cmFuc2Zvcm0tb3JpZ2luOiAkb3JpZ2luO1xuICAgICAgIC1vLXRyYW5zZm9ybS1vcmlnaW46ICRvcmlnaW47XG4gICAgICAtbXMtdHJhbnNmb3JtLW9yaWdpbjogJG9yaWdpbjtcbiAgLXdlYmtpdC10cmFuc2Zvcm0tb3JpZ2luOiAkb3JpZ2luO1xuICAgICAgICAgIHRyYW5zZm9ybS1vcmlnaW46ICRvcmlnaW47XG59XG5cbi8vdHJhbnNpdGlvbl9hbGxcbkBtaXhpbiB0cmFuc2l0aW9uX2FsbCgkdGltZSwgJGVhc2UpIHtcbiAgICAtd2Via2l0LXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAtbW96LXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAgLW1zLXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAgIC1vLXRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbiAgICAgICAgICAgIHRyYW5zaXRpb246IGFsbCAkdGltZSAkZWFzZTtcbn0vL3RyYW5zaXRpb25fYWxsXG5cbkBtaXhpbiB0cmFuc2l0aW9uX3Byb3AoJHByb3AsICR0aW1lLCAkZWFzZSkge1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbjogJHByb3AgJHRpbWUgJGVhc2U7XG4gICAgICAgLW1vei10cmFuc2l0aW9uOiAkcHJvcCAkdGltZSAkZWFzZTtcbiAgICAgICAgLW1zLXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlO1xuICAgICAgICAgLW8tdHJhbnNpdGlvbjogJHByb3AgJHRpbWUgJGVhc2U7XG4gICAgICAgICAgICB0cmFuc2l0aW9uOiAkcHJvcCAkdGltZSAkZWFzZTtcbn1cblxuQG1peGluIHRyYW5zaXRpb25fcHJvcF9kZWxheSgkcHJvcCwgJHRpbWUsICRlYXNlLCAkZGVsYXkpIHtcbiAgICAtd2Via2l0LXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAtbW96LXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAgLW1zLXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAgIC1vLXRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbiAgICAgICAgICAgIHRyYW5zaXRpb246ICRwcm9wICR0aW1lICRlYXNlICRkZWxheTtcbn1cblxuXG5AbWl4aW4gdHJhbnNpdGlvbnMoJHguLi4pe1xuICAtd2Via2l0LXRyYW5zaXRpb246ICR4O1xuICAtbW96LXRyYW5zaXRpb246ICR4O1xuICAtbXMtdHJhbnNpdGlvbjogJHg7XG4gIC1vLXRyYW5zaXRpb246ICR4O1xuICB0cmFuc2l0aW9uOiAkeDtcbn1cblxuQG1peGluIGJhY2tncm91bmQtaW1hZ2UtdmVyc2lvbmVkKCRpbWFnZW4pIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcjeyRpbWFnZW59P3Y9I3skdmVyc2lvbl9zaGNrfScpO1xufSJdfQ== */"

/***/ }),

/***/ "./src/app/components/views/home/home.component.ts":
/*!*********************************************************!*\
  !*** ./src/app/components/views/home/home.component.ts ***!
  \*********************************************************/
/*! exports provided: HomeComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "HomeComponent", function() { return HomeComponent; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _services_wp_wp_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../../services/wp/wp.service */ "./src/app/services/wp/wp.service.ts");
/* harmony import */ var jquery__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! jquery */ "./node_modules/jquery/dist/jquery.js");
/* harmony import */ var jquery__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(jquery__WEBPACK_IMPORTED_MODULE_3__);




var HomeComponent = /** @class */ (function () {
    function HomeComponent(wpService) {
        this.wpService = wpService;
        this.data = [];
        this.slideConfig = { "slidesToShow": 5, "slidesToScroll": 1, "centerMode": true };
    }
    HomeComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.wpService.getHomeData()
            .subscribe(function (data) {
            _this.data = data["acf"];
        }, function (error) {
            console.error(error);
        });
    };
    HomeComponent.prototype.slickInit = function (e) {
        var image_slide_center = jquery__WEBPACK_IMPORTED_MODULE_3__('.slick-center').find('img').attr('src');
        jquery__WEBPACK_IMPORTED_MODULE_3__('#imagen-seleccionada').css('background-image', 'url("' + image_slide_center + '")');
    };
    HomeComponent.prototype.breakpoint = function (e) {
        //console.log('breakpoint');
    };
    HomeComponent.prototype.afterChange = function (e) {
        var image_slide_center = jquery__WEBPACK_IMPORTED_MODULE_3__('.slick-center').find('img').attr('src');
        jquery__WEBPACK_IMPORTED_MODULE_3__('#imagen-seleccionada').css('background-image', 'url("' + image_slide_center + '")');
    };
    HomeComponent.prototype.beforeChange = function (e) {
        //console.log('beforeChange');
    };
    HomeComponent = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Component"])({
            selector: 'app-home',
            template: __webpack_require__(/*! ./home.component.html */ "./src/app/components/views/home/home.component.html"),
            styles: [__webpack_require__(/*! ./home.component.scss */ "./src/app/components/views/home/home.component.scss")]
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_services_wp_wp_service__WEBPACK_IMPORTED_MODULE_2__["WpService"]])
    ], HomeComponent);
    return HomeComponent;
}());



/***/ }),

/***/ "./src/app/services/wp/wp.service.ts":
/*!*******************************************!*\
  !*** ./src/app/services/wp/wp.service.ts ***!
  \*******************************************/
/*! exports provided: WpService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "WpService", function() { return WpService; });
/* harmony import */ var tslib__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! tslib */ "./node_modules/tslib/tslib.es6.js");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common/http */ "./node_modules/@angular/common/fesm5/http.js");



var WpService = /** @class */ (function () {
    function WpService(http) {
        this.http = http;
        this.urlMenuApi = 'http://localhost/app/wp-json/menus/v2/header';
        this.urlApi = 'http://localhost/app/wp-json/wp/v2/';
        this.idHomeBlocks = 8;
        this.urlCf7Api = 'http://localhost/app/wp-json/contact-form-7/v1/contact-forms/';
        this.idCf7 = 7;
    }
    WpService.prototype.getHeaderMenu = function () {
        return this.http.get(this.urlMenuApi);
    };
    WpService.prototype.getHomeData = function () {
        return this.http.get(this.urlApi + 'home-blocks/' + this.idHomeBlocks);
    };
    WpService.prototype.sendContact = function ($post) {
        return this.http.post(this.urlCf7Api + this.idCf7 + '/feedback', $post);
    };
    WpService = tslib__WEBPACK_IMPORTED_MODULE_0__["__decorate"]([
        Object(_angular_core__WEBPACK_IMPORTED_MODULE_1__["Injectable"])({
            providedIn: 'root'
        }),
        tslib__WEBPACK_IMPORTED_MODULE_0__["__metadata"]("design:paramtypes", [_angular_common_http__WEBPACK_IMPORTED_MODULE_2__["HttpClient"]])
    ], WpService);
    return WpService;
}());



/***/ }),

/***/ "./src/environments/environment.ts":
/*!*****************************************!*\
  !*** ./src/environments/environment.ts ***!
  \*****************************************/
/*! exports provided: environment */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "environment", function() { return environment; });
// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.
var environment = {
    production: false
};
/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.


/***/ }),

/***/ "./src/main.ts":
/*!*********************!*\
  !*** ./src/main.ts ***!
  \*********************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "./node_modules/@angular/core/fesm5/core.js");
/* harmony import */ var _angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/platform-browser-dynamic */ "./node_modules/@angular/platform-browser-dynamic/fesm5/platform-browser-dynamic.js");
/* harmony import */ var _app_app_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./app/app.module */ "./src/app/app.module.ts");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./environments/environment */ "./src/environments/environment.ts");




if (_environments_environment__WEBPACK_IMPORTED_MODULE_3__["environment"].production) {
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["enableProdMode"])();
}
Object(_angular_platform_browser_dynamic__WEBPACK_IMPORTED_MODULE_1__["platformBrowserDynamic"])().bootstrapModule(_app_app_module__WEBPACK_IMPORTED_MODULE_2__["AppModule"])
    .catch(function (err) { return console.error(err); });


/***/ }),

/***/ 0:
/*!***************************!*\
  !*** multi ./src/main.ts ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /Users/fortizweb/Documents/PROYECTOS/DOJO/kibotest/app/kibotest/kibo-front/src/main.ts */"./src/main.ts");


/***/ })

},[[0,"runtime","vendor"]]]);
//# sourceMappingURL=main.js.map