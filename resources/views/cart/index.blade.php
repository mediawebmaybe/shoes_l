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
                <div class="cart">

                    <?php if (!empty($result['products'])): ?>
                    <table>
                        <tr class="grus">
                            <th>Товар</th>
                            <th>Название</th>
                            <th>Стомость ₽</th>
                            <th>Количество, шт</th>
                        </tr>
                        <?php
                        foreach ($result['products'] as $product):
                        ?>

                        <tr>
                            <td><img style="width: 200px" src="{{asset('images/'.$product['code'].'.jpg')}}"/></td>
                            <td>
                                <a href="/product/<?php echo $product['id']; ?>">
                                    <?php echo $product['name']; ?>
                                </a>
                            </td>
                            <td><?php echo $product['price'] * $result['productsInCart'][$product['id']]; ?></td>
                            <td><?php echo $result['productsInCart'][$product['id']]; ?></td>
                            <td>  <a href="/cart/delete/<?php echo $product['id'];?>"><img src="/template/img/delete.png" alt="" style="width: 40px"></a></td>
                        </tr>

                        <?php endforeach; ?>
                        <tr class="fullCost">
                            <td colspan="2">Общая стоимость:</td>
                            <td><?php echo $result['totalPrice']; ?> ₽</td>
                            <td><a class="btn checkout" href="/cart/checkout/">Оформить заказ</a></td>
                        </tr>

                    </table>

                    <?php else: ?>
                    <div class="emptyCart"><p>Корзина пуста</p>

                        <a href="/">Вернуться к покупкам</a>
                    </div>
                    <?php endif; ?>

                </div>
            </div>
        </div>
        </div>
    </section>

@endsection
