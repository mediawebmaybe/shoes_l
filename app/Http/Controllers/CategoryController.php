<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Products;

class CategoryController extends Controller
{
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $products = Products::select('*')->where('category_id', $id)->get();
        $category = Category::all();
        $result = array('products' => $products, 'category' => $category);

        return view('category/index', compact('result'));
    }
}
