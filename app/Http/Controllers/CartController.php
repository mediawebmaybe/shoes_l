<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use App\Models\Products;
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productsInCart = session()->get('products');
        $result = array();
        $totalPrice = 0;
        $products = array();
        $result['productsInCart'] = array();

        if (!empty($productsInCart['products'])) {
            $productsIds = array_keys($productsInCart['products']);
            $products = Products::select('*')->whereIn('id', $productsIds)->get();


            foreach ($products as $item) {
                $totalPrice += $item['price'] * $productsInCart['products'][$item['id']];
            }

            $result['productsInCart'] = $productsInCart['products'];

        }
        $result['totalPrice'] = $totalPrice;
        $result['products'] = $products;

        return view('cart/index', compact('result'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Orders::orderSave($request);

        session()->put(array('products' => array()));

        return redirect()->back()->with('success_message', 'Ваш заказ успешно оформлен!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = session()->get('products');

        $quantity = 1;
        if (!empty($data['products'][$id]))
            $quantity = $data['products'][$id] + 1;

        $data["products"][$id] = $quantity;
        session()->put(array('products' => $data));

        return view('cart/add');
    }

    public function checkout()
    {
        $productsInCart = session()->get('products');
        $result = array();
        $totalPrice = 0;
        $totalQuantity = 0;

        if (!empty($productsInCart['products'])) {
            $productsIds = array_keys($productsInCart['products']);
            $products = Products::select('*')->whereIn('id', $productsIds)->get();

            foreach ($products as $item) {
                $totalPrice += $item['price'] * $productsInCart['products'][$item['id']];
                $totalQuantity += $productsInCart['products'][$item['id']];
            }

        }

        $result['totalPrice'] = $totalPrice;
        $result['totalQuantity'] = $totalQuantity;

        return view('cart/checkout', compact('result'));
    }

}
