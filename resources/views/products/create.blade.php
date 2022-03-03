<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form method="post" action="{{route('products.store')}}">

    @csrf
    @method('POST')
    <p>Название <input name="name" type="text"></p>
    <p>Код <input name="code" type="number"></p>
    <p>Цена <input name="price" type="number"></p>
    <p>Категория <input name="category_id" type="number"></p>
    <p>Бренд <input name="brand" type="text"></p>
    <p>Цвет <input name="color" type="text"></p>
    <p>Материал <input name="material" type="text"></p>
    <p>Страна <input name="country" type="text"></p>
    <p>Размер <input name="size" type="number"></p>
    <p>Описание <input name="description" type="text"></p>


    <input type="submit" value="Сохранить">

</form>
</body>
</html>
