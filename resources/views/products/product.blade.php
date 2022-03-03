@extends('layouts.app')

@section('content')


    <section>
        <div class="" style="height: 1100px">
            <div class="navigator">
                <div class="tabs">
                    <div class="page-head">
                        <div class="page-title">
                            <h2><?php echo $product['name'] ?></h2>
                        </div>
                    </div>
                </div>
                <div class="line_wide"></div>
            </div>
            <div class="text-left">
                <img src="{{asset('images/'.$product['code'].'.jpg')}}" alt="<?php echo $product['name'] ?>" width="600">


                <div class="text">
                    <h2>Описание</h2>
                    <p><?php echo $product['description'];?></p>
                </div>
            </div>
            <div class="text-right">

                <div class="product_prop">
                    <div><b>Цвет:</b> <?php echo $product['color'];?></div>
                    <div><b>Бренд:</b> <?php echo $product['brand'];?></div>
                    <div><b>Размер:</b> <?php echo $product['size'];?></div>
                    <div><b>Страна:</b> <?php echo $product['country'];?></div>
                    <div><b>Материал:</b> <?php echo $product['material'];?></div>
                </div>

                <div class="price"><b>Цена:</b> <?php echo $product['price'];?>₽</div>
                <br/>
                <div class="gim">
                    <a  href="/cart/add/<?php echo $product['id']; ?>" class="buy"> Добавить в корзину</a>
                </div>
            </div>
        </div>
    </section>



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
@endsection
