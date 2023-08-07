<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserControlller extends Controller
{
    function showuser(){
        $users = DB::table('users')
                        ->simplePaginate(4);
            // ->select('city')
            // ->distinct()
            // ->orderBy('name')
            // ->orderBy('age','desc')
            // ->limit(4)
            // ->offset(2)
            // ->count();

            // ->where('city','lahore')
            // ->whereBetween('id',[2,8])
            // ->whereBetween('age',[25,30])
            // ->whereIn('city',['lahore','islamabad'])
            // ->orWhere('age','>=',20)
            // ->where([
            //     ['city','=','lahore']
            //     ['age','>',15]
            // ])
            // ->where('name','like','%s%')
            // ->pluck('name'); // single column data show
        // $users = DB::table('users')->where('id',3)->get();
        // $users = DB::table('users')->find(4);
        // return $users;


        // dd($users);
        // dump($users);
        return view('alluser',['data' => $users]);
    }
    function singleuser(string $id){
               $users = DB::table('users')->where('id',$id)->get();
            //    return $users;
        return view('user',['data' => $users]);
    }

    function adduser(Request $req){
        $user = DB::table('users')
                    ->insert([
                        'name' => $req->username,
                        'email' => $req->useremail,
                        'age' => $req->userage,
                        'city' => $req->usercity,

                    ]);
                    if($user){
                        return redirect()->route('home');
                    }else{
                        echo "<h1>Data Not Found</h1>";
                    }
    }

    function updatepage(string $id){
        $users = DB::table('users')->find($id);
        return view('updateuser',['data' => $users]);
        // return $users;

    }

    function updateuser(Request $req,$id){
        $user = DB::table('users')
                    ->where('id',$id)
                    ->update([
                        'name' => $req->username,
                        'email' => $req->useremail,
                        'age' => $req->userage,
                        'city' => $req->usercity,
                    ]);
                    if($user){
                     return redirect()->route('home');
                    }else{
                        echo "<h1>Data Not Found</h1>";
                    }
                    // ->increment('age')
                    // ->decrement('age');
                    // ->incrementEach([
                    //     'age' => 2
                    // ]);
                    // ->updateOrInsert(
                    //     [
                    //         'name' => 'atif',
                    //         'email' =>'atif@gmail.com'
                    // ],
                    // [
                    //     'age' => 30
                    // ]);
                    // if($user){
                    //     echo "<h1>Data Add</h1>";
                    // }else{
                    //     echo "Not Add";
                    // }
    }
    function userdelete(string $id){
        $user = DB::table('users')
        ->where('id',$id)
        ->delete();

        if($user){
            return redirect()->route('home');
        }

    }
}
