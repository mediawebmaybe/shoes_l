<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laravel</title>

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
    @livewireStyles

    <!-- Scripts -->
    <script src="{{ mix('js/app.js') }}" defer></script>

    <link rel="stylesheet" href="/css/styles.css">

</head>
<body>


<header>
    <div class="header-logo">
        <div class="col-sm-3"><a href="/" class="header-logo-img"></a></div>
        <div class="header-right col-sm-9">
            @if (Route::has('login'))
                @auth
                    <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 dark:text-gray-500 underline header-right-icon header-auth">Личный кабинет</a>
                @else
                    <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline header-right-icon header-auth">Вход</a>

                    @if (Route::has('register'))
                        <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Регистрация</a>
                    @endif
                @endauth
            @endif
            <a class="header-right-icon header-cart" href="/cart/" >Корзина</a>
        </div>
    </div>

    <div class="headerCenter">
        <div class="twoLine">
            <span class="icon-search"></span>
            <a class="nameBookmarks" href="/" >ГЛАВНАЯ</a>
            <a class="nameBookmarks" href="/products/">МАГАЗИН</a>
            <a class="nameBookmarks" href="/about/" >О КОМПАНИИ</a>

        </div>
    </div>
</header>


@yield('content')


<footer class="footer">
    <div class="footer-left">
        <nav class="footernav">
            <ul>
                <li><a href="/">Главная</a></li>
                <li><a href="../about/">О компании</a></li>
                <li><a href="../personal/">Личный кабинет</a></li>
                <li><a href="../cart/">Корзина</a></li>
            </ul>
        </nav>
    </div>
    <div class="footer-right">
        <div class="phone"><a href="#">+7 (499) 999-99-99</a></div>
        <div class="mail"><a href="#">info@shoes.ru</a></div>
        <div class="iconweb">
            <ul>
                <li><a class="vk" href="https://vk.com/"><img alt=""  src="/template/img/98.jpg"></a></li>
                <li><a class="fb" href="https://ru-ru.facebook.com/"><img alt="" src="/template/img/97.jpg"></a></li>
                <li><a class="twiter" href="https://twitter.com/"><img alt="" src="/template/img/99.jpg"></a></li>
                <li><a class="insta" href="https://www.instagram.com/"><img alt="" src="/template/img/96.jpg"></a></li>
            </ul>
        </div>
    </div>
</footer>

</body>
</html>

