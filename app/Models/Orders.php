<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Auth;

class Orders extends Model
{

    use HasFactory;

    protected $quarded = [];
    protected $fillable = ['*'];

    public static function orderSave($dataOrder) {

        $productsInCart = session()->get('products');
        $user_id = 0;

        if (Auth::user()) {
            $user_id = Auth::user()->id;
        }

        $item = new Orders();
        $item->user_name = $dataOrder['userName'];
        $item->user_phone = $dataOrder['userPhone'];
        $item->user_comment = $dataOrder['userComment'];
        $item->user_id = $user_id;
        $item->products = json_encode($productsInCart['products']);

        $item->save();

        return true;
    }
}
