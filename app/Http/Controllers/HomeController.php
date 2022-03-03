<?php

namespace App\Http\Controllers;

use App\Models\Products;

class HomeController extends Controller
{
    public function index()
    {
        $products = Products::all();
        return view('welcome', compact('products'));

       // return view('welcome');
    }
}
