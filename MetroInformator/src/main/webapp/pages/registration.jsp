<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>meTro-Systems - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="static/images/sw.png" type="image/png">

    <!-- ==================================================
               javascript
================================================== -->
    <script src="/static/js/jquery-3.2.1.js"></script>
    <script src="/static/js/jcanvas.js"></script>
    <script src="/static/js/main.js"></script> <!-- Resource jQuery -->
    <script src="/static/js/custom.js"></script>
    <script src="/static/js/velocity.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="/static/js/sweetalert2.js"></script>

    <!-- css -->
    <link rel="stylesheet" href="/static/css/sweetalert2.css">
    <link href="/static/css/bootstrap2.min.css" rel="stylesheet"/>
    <link href="/static/css/style.css" rel="stylesheet"/>
    <link href="/static/css/calendar.css" rel="stylesheet"/>
    <link href="/static/css/vypad-spiski-dlya-form.css" rel="stylesheet"/>
</head>

<body>
<div id="site-content" class="home-page">
    <div class="all-menu navbar-fixed-top">

        <!-- конец верхнего меню -->
        <!-- Основное меню -->
        <header>
            <div class="navbar">
                <div class="container eshe-container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="/"><em class="icon-logo"></em></a>
                    </div>


                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="/">Home</a></li>
                            <li><a href="/tickets">Tickets</a></li>
                            <li><a href="/schedule">Shedule</a></li>
                        </ul>

                    </div>

                    <!--                гамбургерное меню    -->
                    <%----%>
                </div>
            </div>
        </header>
    </div>
    <!-- конец основного меню -->

    <div class="page container-fluid">
        <!-- ШАПКА -->
        <div id="banner" class="row">
            <!-- слайдер -->


            <div id="main-slider" class="col-md-12">
                <ul class="slides">
                    <li>
                        <div class="flex-caption">
                            <!--
                                                    <p class="hero-text">A first step</p>
                                                    <p class="hero-text">to your journey</p>
                                                    <p class="brand-bottom-text">
                                                    <span>Sign in or create new account first.</span></p>
                            -->

                            <!-- КНОПКИ -->

                            <form class="cd-form half-form1" action="/registration" method="post">
                                <p class="fieldset">
                                    <label class="image-replace cd-firstname" for="signup-firstname">First name</label>
                                    <input class="full-width has-padding has-border" id="signup-firstname"
                                           name="firstName" type="text" placeholder="First name" required
                                           pattern="^[a-zA-Z]+$">
                                </p>

                                <p class="fieldset">
                                    <label class="image-replace cd-lastname" for="signup-lastname">Last name</label>
                                    <input class="full-width has-padding has-border" id="signup-lastname"
                                           name="lastName" type="text" placeholder="Last name" required
                                           pattern="^[a-zA-Z]+$">
                                </p>

                                <p class="fieldset">
                                    <label class="image-replace cd-email" for="signup-email">E-mail address</label>
                                    <input class="full-width has-padding has-border" id="signup-email" name="login"
                                           type="email" placeholder="E-mail address" required>
                                    <span class="cd-error-message">Проверьте правильность ввода e-mail</span>
                                </p>

                                <p class="fieldset">
                                    <label class="image-replace cd-password" for="signup-password">PASSWORD</label>
                                    <input class="full-width has-padding has-border" id="signup-password"
                                           name="password" type="text" placeholder="Password" required
                                           pattern="[A-Za-z0-9]{6,}">
                                    <a href="#0" class="hide-password">Show</a>
                                    <span class="cd-error-message">Неверный логин или пароль</span>
                                </p>

                                <p class="fieldset">
                                    <label class="image-replace cd-password" for="signup-password">PASSWORD</label>
                                    <input class="full-width has-padding has-border" id="signup-password"
                                           name="phone" type="text" placeholder="Phone in format '+7XXXXXXXXXX'" required>
                                </p>

                                <p class="fieldset" id="login-form1">
                                    <input type="checkbox" id="accept-terms">
                                    <label for="accept-terms">I agree with <a href="#0"> all terms</a></label>
                                </p>

                                <p class="fieldset">
                                    <input class="full-width has-padding" type="submit" value="SIGN UP">
                                </p>
                            </form>

                            <div class="register-signin-home main-nav1" style="margin: 0 0 0 205px;">
                                <ul>
                                    <li><span><a href="/login" class="cd-signup"
                                                 style="background-color: #fff; color: #000; border: none; text-decoration: underline;">I HAVE AN ACCOUNT</a></span>
                                    </li>
                                </ul>
                            </div>

                            <div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
                                <div class="cd-user-modal-container"> <!-- this is the container wrapper -->


                                    <!-- cd-login -->


                                    <div id="cd-reset-password"> <!-- reset password form -->
                                        <p class="cd-form-message">Enter your mail, we'll send your pass.</p>

                                        <form class="cd-form">
                                            <p class="fieldset">
                                                <label class="image-replace cd-email" for="reset-email">E-mail</label>
                                                <input class="full-width has-padding has-border" id="reset-email"
                                                       type="email" placeholder="Ваш E-mail">
                                                <span class="cd-error-message">Check your E-mail!</span>
                                            </p>

                                            <p class="fieldset">
                                                <input class="full-width has-padding" type="submit"
                                                       value="SEND MY PASS">
                                            </p>
                                        </form>

                                        <c:if test="${not empty emptyfields}">
                                            <script>
                                                swal({
                                                    title: 'Oops..',
                                                    text: 'Some fields are empty.',
                                                    type: 'error'
                                                });
                                            </script>
                                        </c:if>
                                        <c:if test="${not empty exist}">
                                            <script>
                                                swal({
                                                    title: 'Oops..',
                                                    text: 'User with such login already exist.',
                                                    type: 'error'
                                                });
                                            </script>
                                        </c:if>
                                        <c:if test="${not empty uncpass}">
                                            <script>
                                                swal({
                                                    title: 'Oops..',
                                                    text: 'Password must contain not less 6 numbers or letters',
                                                    type: 'error'
                                                });
                                            </script>
                                        </c:if>
                                        <c:if test="${not empty uncem}">
                                            <script>
                                                swal({
                                                    title: 'Oops..',
                                                    text: 'Please, use correct email',
                                                    type: 'error'
                                                });
                                            </script>
                                        </c:if>
                                        <c:if test="${not empty systemError}">
                                            <script>
                                                swal({
                                                    title: 'OOOOPS...',
                                                    text: 'Something very bad happened. Try again',
                                                    type: 'error'
                                                });
                                            </script>
                                        </c:if>

                                        <p class="cd-form-bottom-message"><a href="#0">Back</a></p>
                                    </div> <!-- cd-reset-password -->
                                    <a href="#0" class="cd-close-form">Close</a>
                                </div> <!-- cd-user-modal-container -->
                            </div> <!-- cd-user-modal -->

                        </div>
                    </li>
                </ul>
            </div>


            <!-- конец слайдера -->

        </div>
    </div>

    <div class="clearfix"></div>


</div>


<script>
    $("div[id^='stat_']").click(function () {
        if ($('#station1').val()) {
            if ($('#station2').val()) {
                $('#station1').val($(this).text());
                $('#station2').val('');
            } else {
                if ($('#station1').val() != $(this).text()) {
                    $('#station2').val($(this).text());
//							$('#submit').click();
                }
            }
        } else {
            $('#station1').val($(this).text());
        }
    });
    ;(function () {
        var lang = { // lang[a.lang].x
            "en": {
                x: "Close", nex: "Next month", pre: "Previous month", clear: "Clear",
                m: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Dec"],
                mo: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
                w: "Mo</td><td>Tu</td><td>We</td><td>Th</td><td>Fr</td><td>Sa</td><td>Su"
            }
        }
        var def = {
            lang: "en",
            id: "",
            "class": "xcalend",
            delim: ".",
            order: 0, // 0/1/2
            o: {value: ""},
            year: -1, month: -1, dat: -1, day: -1, dop: "",
            autoOn: 1, autoOff: 1, now: 1, set0: 0, x: 1, hide: 1, to: "", fn: ""
        }

        function iss(n) {
            if (typeof n === "undefined" || n === null) return false;
            return true
        }

        function Nod(n) {
            if (typeof n == 'string') n = document.getElementById(n);
            return n
        }

        function Del(n) {
            n = Nod(n);
            if (!n) return;
            if (typeof(n.remove) == "function") n.remove(); else n.parentNode.removeChild(n)
        }

        function HTM(n, h, b) {
            if (!iss(b)) b = "beforeend";
            Nod(n).insertAdjacentHTML(b, h)
        }

        function Eve(e, evTyp, fn) {
            if (e.addEventListener) e.addEventListener(evTyp, fn, false)
            else if (e.attachEvent) e.attachEvent('on' + evTyp, fn)
            else e['on' + evTyp] = fn
        }

        function scrol(y) {
            var a = {'X': 'scrollLeft', 'Y': 'scrollTop'}
            if (typeof y === "undefined" || !(y in a)) y = 'Y';
            return (window['page' + y + 'Offset'] || document.documentElement[a[y]] || document.body[a[y]]);
        }

        window.xCal = function (ob, delim, order) { // xCal(this,'-',1) // xCal() == close
            var a = {};
            for (var key in def) a[key] = def[key];
            if (typeof delim === "object") {
                for (var key in delim) a[key] = delim[key];
            } else {
                if (iss(delim)) a.delim = delim;
                if (iss(order)) a.order = order;
            }
            if (a.id === "") a.id = a['class'];

            if (typeof ob !== "object") {
                if ((typeof ob === "undefined" || ob == 0 || ob == 1) && Nod(a.id)) { // Close
                    if (a.hide == 1) {
                        if (typeof delim !== "string") Nod(a.id).style.display = "none";
                        else Nod(delim).style.display = "none";
                    }
                    return false;
                }
                if (ob == 2 || ob === "now") { // Return Now
                    var D = new Date(), d = D.getDate(), m = D.getMonth() + 1, y = D.getFullYear();
                    if (d < 10) d = "0" + d;
                    if (m < 10) m = "0" + m;
                    if (a.order == 1) return y + a.delim + m + a.delim + d;
                    if (a.order == 2) return m + a.delim + d + a.delim + y;
                    else return d + a.delim + m + a.delim + y;
                }
            }
            a.o = Nod(ob);
            a.f = function () {
                var m = a.month + 1, d = a.dat, y = a.year;
                a.sdat = a.dat;
                a.smonth = a.month;
                a.syear = a.year;
                if (a.order == 1) {
                    d = y;
                    y = a.dat
                }
                else if (a.order == 2) {
                    d = m;
                    m = a.dat
                }
                if (y < 10) y = "0" + y;
                if (m < 10) m = "0" + m;
                if (d < 10) d = "0" + d;
                d += a.delim + m + a.delim + y;
                if (a.dop !== "") d += " " + a.dop;
                if (a.o) a.o.value = xCal.value = d;
                if (a.hide == 1) Nod(a.id).style.display = "none";
                if (typeof a.fn === "function") a.fn(d, a);
                else if (typeof a.fn === "string" && a.fn !== "") eval(a.fn + "('" + d + "');");
            }

            if (typeof a.o === "undefined") return false;
            a = xCal.gVal(a);
            a = xCal.gDat(a);


            if (!Nod(a.id)) {
                if (a.to == "") a.to = document.body; else a.to = Nod(a.to);
                HTM(a.to, '<table id="' + a.id + '" class="' + a['class'] + '"><thead></thead><tbody></tbody><tfoot></tfoot></table>');
            } else Nod(a.id).style.display = "";

            var oo = a.o.getBoundingClientRect();
            Nod(a.id).style.left = oo.left + scrol('X') + "px";
            Nod(a.id).style.top = oo.bottom + scrol() + "px";

            xCal.fM = function (a) {
                var m = a.month, ca = '', j = 1,
                    months = lang[a.lang].m;
                ca += '<td colspan=2 title="12"';
                if (m == 11) ca += ' class="today"';
                else if (a.tmonth == (11)) ca += ' class="tday"';
                ca += '>' + lang[a.lang].m[11] + '</td>';
                for (var i = 0; i < (months.length - 1); i++) {
                    j++;
                    ca += '<td colspan=2 title="' + (i + 1) + '"';
                    if (m == i) ca += ' class="today"';
                    else if (a.tmonth == (i)) ca += ' class="tday"';
                    ca += '>' + months[i] + "</td>";
                    if (j > 2) {
                        ca += '</tr><tr>';
                        j = 0
                    }
                }
                Del(document.querySelector("#" + a.id + " tbody"));
                HTM(a.id, '<tbody><tr><th rowspan=4 valign=bottom><a href="http://cssworld.ru/datepicker/" target="_blank">?</a></th>' + ca + '</tr></tbody>');
                var k = document.querySelectorAll("#" + a.id + " tbody td");
                for (var i = 0; i < k.length; i++) {
                    k[i].onclick = function () {
                        var t = this.title;
                        if (t == '') return;
                        a.month = parseInt(t) - 1;
                        xCal.f(a);
                    }
                }
            }

            xCal.fY = function (a) {
                var y = a.year, ca = '', j = 0;
                for (var i = -8; i < 7; i++) {
                    j++;
                    ca += '<td colspan=2';
                    if (y == (y + i)) ca += ' class="today"';
                    else if (a.tyear == (y + i)) ca += ' class="tday"';
                    ca += '>' + (y + i) + "</td>";
                    if (j > 2) {
                        ca += '</tr><tr>';
                        j = 0
                    }
                }
                Del(document.querySelector("#" + a.id + " tbody"));
                HTM(a.id, '<tbody><tr><th rowspan=5 valign=bottom><a href="http://cssworld.ru/datepicker/" target="_blank">?</a></th>' + ca + '</tr></tbody>');
                var k = document.querySelectorAll("#" + a.id + " tbody td");
                for (var i = 0; i < k.length; i++) {
                    k[i].onclick = function () {
                        var t = this.innerHTML;
                        if (t == '' || t == "&nbsp;") return;
                        a.year = parseInt(t);
                        xCal.f(a);
                    }
                }
            }

            xCal.f = function (a) {
                Del(document.querySelector("#" + a.id + " thead"));
                Del(document.querySelector("#" + a.id + " tbody"));
                Del(document.querySelector("#" + a.id + " tfoot"));
                var mm, y = a.year, m = a.month, dat = a.dat,
                    Dlast = new Date(y, m + 1, 0).getDate(),
                    DNlast = new Date(y, m, Dlast).getDay(),
                    DNfirst = new Date(y, m, 1).getDay(),
                    ca = '', j = 0,
                    months = lang[a.lang].mo;
                if (DNfirst != 0) j = DNfirst - 1;
                else j = 6;

                HTM(a.id, '<thead><tr><td class="cal-l" title="' + lang[a.lang].pre + '">BACK</td><td colspan=3 class="cal-m"></td><td colspan=2 class="cal-y"></td><td class="cal-r" title="' + lang[a.lang].nex + '">NEXT</td></tr><tr><td>' + lang[a.lang].w + '</td></tr></thead>');

                if (j > 0) {//
                    if (m == 0) mm = 11; else mm = m - 1;
                    if (j > 1) {
                        ca += '<td colspan=' + j + ' class="cal-l" align=left title="' + lang[a.lang].pre + ' ' + lang[a.lang].mo[mm] + '"><b>BACK ' + lang[a.lang].m[mm] + '</b></td>';
                    } else ca += '<td class="cal-l" title="' + lang[a.lang].pre + ' ' + lang[a.lang].mo[mm] + '"><b>NEXT</b></td>';
                }

                for (var i = 1; i <= Dlast; i++) {
                    j++;
                    ca += '<td';
                    if (i == dat) {
                        if (m == a.smonth && y == a.syear) ca += ' class="today"';
                        else ca += ' class="tday"';
                    } else if (i == a.tdat && m == a.tmonth && y == a.tyear) ca += ' class="tday"';
                    ca += '>' + i + '</td>';
                    if (j > 6) {
                        ca += '</tr><tr>';
                        j = 0
                    }
                }
                if (DNlast > 0) {
                    if (m > 10) mm = 0; else mm = m + 1;
                    if (DNlast < 6) {
                        ca += '<td colspan=' + (7 - DNlast) + ' class="cal-r" align=right title="' + lang[a.lang].nex + ' ' + lang[a.lang].mo[mm] + '"><b>' + lang[a.lang].m[mm] + ' BACK</b></td>';
                    } else ca += '<td class="cal-r" title="' + lang[a.lang].nex + ' ' + lang[a.lang].mo[mm] + '"><b>NEXT</b></td>';
                }


                HTM(a.id, '<tbody><tr class="cal-first">' + ca + '</tr></tbody>');
                ca = '';
                var k, kk = [3, 3, 1];
                if (!a.now) kk[0] = 0;
                if (!a.set0) kk[1] = 0;
                if (!a.x) kk[2] = 0;
                if (a.now) {
                    k = kk[0] + kk[1] + kk[2];
                    if (k < 7) kk[0] += (7 - k);
                    ca += '<td colspan=' + kk[0] + ' class="cal-nw"></td>';
                }
                if (a.set0) {
                    k = kk[0] + kk[1] + kk[2];
                    if (k < 7) kk[1] += (7 - k);
                    ca += '<td colspan=' + kk[1] + ' class="cal-s0">' + lang[a.lang].clear + '</td>';
                }
                if (a.x) {
                    k = kk[0] + kk[1] + kk[2];
                    if (k < 7) kk[2] += (7 - k);
                    ca += '<td colspan=' + kk[2] + ' onClick="document.getElementById(\'' + a.id + '\').style.display=\'none\'" title="' + lang[a.lang].x + '" class="bold">' + (kk[2] > 2 ? lang[a.lang].x : '&#215;') + '</td>';
                }
                HTM(a.id, '<tfoot><tr>' + ca + '</tr></tfoot>');


                document.querySelector("#" + a.id + " thead td.cal-m").innerHTML = months[m];
                document.querySelector("#" + a.id + " thead td.cal-y").innerHTML = y;
                document.querySelector("#" + a.id + " thead td.cal-l").onclick = function () {
                    xCal.mmm(a)
                }
                document.querySelector("#" + a.id + " thead td.cal-r").onclick = function () {
                    xCal.mpp(a)
                }
                document.querySelector("#" + a.id + " thead td.cal-m").onclick = function () {
                    xCal.fM(a)
                }
                document.querySelector("#" + a.id + " thead td.cal-y").onclick = function () {
                    xCal.fY(a)
                }

                k = document.querySelector("#" + a.id + " tfoot td.cal-nw");
                if (k) { // a.now
                    k.innerHTML = xCal(2, a);
                    k.onclick = function () {
                        var dop = "";
                        a = xCal.gDop(a);
                        if (a.dop != "") dop = " " + a.dop;
                        if (a.o) a.o.value = xCal.value = this.innerHTML + dop; // xCal(2, a);
                        if (a.hide == 1) {
                            document.getElementById(a.id).style.display = 'none';
                        } else {
                            var o = document.querySelectorAll("#" + a.id + " .today");
                            for (var j = 0; j < o.length; j++) {
                                o[j].className = ""
                            }
                            a = xCal.gDat(a);
                            var D = new Date();
                            a.year = D.getFullYear();
                            a.month = D.getMonth();
                            a.dat = D.getDate();
                        }
                        a.sdat = a.dat;
                        a.smonth = a.month;
                        a.syear = a.year;
                        if (typeof a.fn === "function") a.fn(this.innerHTML, a);
                        else if (typeof a.fn === "string" && a.fn !== "") eval(a.fn + "('" + this.innerHTML + "');");
                        if (a.hide != 1) xCal.f(a);//xCal(a.id, a);
                    }
                }
                k = document.querySelector("#" + a.id + " tfoot td.cal-s0");
                if (k) { // a.set0
                    k.onclick = function () {
                        var t = '00' + a.delim + '00' + a.delim + '00';
                        if (a.order == 1) t = '00' + t; else t += '00';
                        if (a.o) a.o.value = xCal.value = t;
                        a.sdat = a.dat;
                        a.smonth = a.month;
                        a.syear = a.year;
                        if (a.hide == 1) document.getElementById(a.id).style.display = 'none';
                    }
                }
                if (a.autoOff) {
                    Nod(a.id).onmouseleave = function () {
                        xCal()
                    }
                }

                var k = document.querySelectorAll("#" + a.id + " tbody td");
                for (var i = 0; i < k.length; i++) {
                    k[i].onclick = function () {
                        var t = this.innerHTML;
                        if (t == '' || t == "&nbsp;") return;
                        if (a.hide != 1) {
                            var o = document.querySelectorAll("#" + a.id + " .today");
                            for (var j = 0; j < o.length; j++) {
                                o[j].className = ""
                            }
                            this.className = "today";
                        }
                        a = xCal.gDop(a);
                        a.dat = t;
                        if (typeof a.f === "function") a.f(a.id);
                    }
                }
                var r = document.querySelector("#" + a.id + " tbody td.cal-l");
                if (r != null) {
                    r.onclick = function () {
                        xCal.mmm(a)
                    }
                }
                r = document.querySelector("#" + a.id + " tbody td.cal-r");
                if (r != null) {
                    r.onclick = function () {
                        xCal.mpp(a)
                    }
                }
            }

            xCal.f(a);

            return false;
        }

        xCal.mmm = function (a) {
            a.month -= 1;
            if (a.month < 0) {
                a.month = 11;
                a.year--
            }
            xCal.f(a);
        }
        xCal.mpp = function (a) {
            a.month += 1;
            if (a.month > 11) {
                a.month = 0;
                a.year++
            }
            xCal.f(a);
        }

        xCal.gDop = function (a) {
            if (typeof a.o === "undefined") a.o = {value: ""}
            if (typeof a.o.value === "undefined" || a.o.value === "") return a;
            var b = a.o.value.split(" ");
            if (iss(b[1])) a.dop = b[1]; else a.dop = "";
            return a;
        }
        xCal.gVal = function (a) {
            if (typeof a.o === "undefined") a.o = {value: ""}
            if (typeof a.o.value === "undefined" || a.o.value === "") return a;
            var b = a.o.value.split(" ");
            if (iss(b[1])) a.dop = b[1]; else a.dop = "";
            b = b[0].split(a.delim);
            for (var i = 0; i < 3; i++) if (!iss(b[i])) b[i] = -1;
            if (a.order == 2) {
                b[3] = b[1];
                b[1] = b[0];
                b[0] = b[3];
                b[1] = parseInt(b[1]) - 1;
            } else {
                if (a.order == 1) {
                    b[3] = b[2];
                    b[2] = b[0];
                    b[0] = b[3]
                }
                b[1] = parseInt(b[1]) - 1;
            }
            a.syear = a.year = parseInt(b[2]);
            a.smonth = a.month = b[1];
            a.sdat = a.dat = parseInt(b[0]);
            return a;
        }

        xCal.gDat = function (a) {
            var D = new Date();
            a.tyear = D.getFullYear();
            a.tmonth = D.getMonth();
            a.tdat = D.getDate();
            a.tday = D.getDay();
            if (a.month > -1) {
                if (a.year < 0) a.year = D.getFullYear();
                if (a.dat > 0) D.setFullYear(a.year, a.month, a.dat);
                else D.setFullYear(a.year, a.month);
            }
            a.year = D.getFullYear();
            a.month = D.getMonth();
            a.dat = D.getDate();
            a.day = D.getDay();
            a.sdat = a.dat;
            a.smonth = a.month;
            a.syear = a.year;
            return a;
        }

        xCal.set = function (o) {
            for (var key in o) def[key] = o[key]
        }

        xCal.all = function (cl, delim, order) {
            if (typeof cl === "undefined" || cl == "") return;
            var oo;
            if (document.getElementsByClassName) oo = document.getElementsByClassName(cl);
            else oo = document.querySelectorAll("." + cl);
            if (oo.length < 1) return;
            for (var i = 0; i < oo.length; i++) {
                var o = oo[i];
                Eve(o, "input", function () {
                    xCal()
                });
                Eve(o, "keyup", function () {
                    xCal()
                });
                Eve(o, "click", function () {
                    xCal(this, delim, order)
                });
                if (typeof delim === "object") {
                    if (("autoOn" in delim) && delim.autoOn) Eve(o, "mouseenter", function () {
                        xCal(this, delim, order)
                    });
                } else if (def.autoOn) Eve(o, "mouseenter", function () {
                    xCal(this, delim, order)
                });
            }
        }

    })();
</script>

</body>
</html>