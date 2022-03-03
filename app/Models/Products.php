<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;

    protected $quarded = [];
    protected $fillable = ['*'];

    public static function productsSave($dataProd) {

        $item = new Products();
        $item->name = $dataProd['name'];
        $item->code = $dataProd['code'];
        $item->price = $dataProd['price'];
        $item->category_id = $dataProd['category_id'];
        $item->brand = $dataProd['brand'];
        $item->color = $dataProd['color'];
        $item->material = $dataProd['material'];
        $item->country = $dataProd['country'];
        $item->size = $dataProd['size'];
        $item->description = $dataProd['description'];

        $item->save();

        return true;

    }

    public static function productsShow($id) {
dump($id);
    }
}
