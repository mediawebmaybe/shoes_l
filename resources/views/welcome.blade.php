@extends('layouts.app')


@section('content')


    <h2>Новинки</h2>
    <div class="product_items" >
        @foreach ($products as $product)
        <div class="products">
            <div class="center">
                <a href="/product/<?php echo $product['id']; ?>"><img alt="" class="jpg" src="{{asset('images/'.$product['code'].'.jpg')}}" style="width: 300px; height: 300px"></a><br/>
                <a class="gin" href="/product/<?php echo $product['id'];?>">
                    <?php echo $product['name'];?>
                </a><br>
                <a><?php echo $product['price'];?>₽</a>
            </div>
        </div>
        @endforeach
    </div>


@endsection
