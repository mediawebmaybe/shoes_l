@extends('layouts.app')

@section('content')


    <section>
        <div class="">
            <div class="navigator">
                <div class="tabs">
                    <div class="page-head">
                        <div class="page-title">
                            <h1>КАТАЛОГ</h1>
                        </div>
                    </div>
                </div>
                <div class="line_wide" ></div>
            </div>
            <div class="menuCatalog" style="display: flex">

                <div class="col-sm-3" >
                    <div class="left-sidebar">

                        <div class="panel-group category-products">

                            <div class="panel panel-default">
                                @foreach ($result['category'] as $categoryItem)
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a href="/category/<?php echo $categoryItem['id']; ?>">
                                                <?php echo $categoryItem['name']; ?>
                                            </a>
                                        </h4>
                                    </div>
                                @endforeach
                            </div>

                        </div>
                    </div>
                </div>
                <div class="product_items product_items_right" >
                    @foreach ($result['products'] as $product)
                        <div class="products">
                            <div class="center">
                                <a href="/products/<?php echo $product['id']; ?>"><img alt="" class="jpg" src="{{asset('images/'.$product['code'].'.jpg')}}" style="width: 300px; height: 300px"></a><br/>
                                <a class="gin" href="/products/<?php echo $product['id'];?>">
                                    <?php echo $product['name'];?>
                                </a><br>
                                <a><?php echo $product['price'];?>₽</a>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>

@endsection
