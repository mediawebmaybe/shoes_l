@extends('layouts.app')

@section('content')

    <section>
        <div class="">
            <div class="navigator">
                <div class="tabs">
                    <div class="page-head">
                        <div class="page-title">
                            <h1>КОРЗИНА</h1>
                        </div>
                    </div>
                    <div class="line_wide"></div>
                </div>
                <?php if (!empty($result['order'])): ?>
                <p>Заказ оформлен.</p>
                <?php else: ?>
                <p>Выбрано товаров: <?php echo $result['totalQuantity']; ?>, на сумму: <?php echo $result['totalPrice']; ?>₽</p><br/>

                @if (\Session::has('success_message'))
                    <h1>{!! \Session::get('success_message') !!}</h1>
                @endif

                <p>Для оформления заказа заполните форму</p>

                <div class="checkoutF">
                    <form method="post" action="{{route('cart.store')}}">
                        @csrf
                        @method('POST')
                        <br>
                        <p>Ваше имя</p>
                        <input type="text" name="userName"  />
                        <br><br>
                        <p>Номер телефона</p>
                        <input type="text" name="userPhone" />
                        <br><br>
                        <p>Комментарий к заказу</p>
                        <input type="text" name="userComment" />
                        <br>
                        <br>

                        <input type="submit" name="submit" class="checkoutButton buy" value="Оформить" style="margin-top: 10px"/>
                    </form>


                    <?php endif; ?>

                </div>
            </div>
        </div>
    </section>

@endsection
