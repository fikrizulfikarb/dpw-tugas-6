<?php  

namespace App\Http\Controllers;

use App\Models\User;

class UserController extends Controller {
  function index(){
    $data['list_user']= User::all();
    return view('template.user.index', $data);
  }

  function create(){
    return view('template.user.create');
  }

  function store (){
    $user = new User;
    $user->nama = request('nama');
    $user->username = request('username');
    $user->email = request('email');
    $user->password = bcrypt(request('password'));
    $user->save();

    return redirect('admin/user')->with('success','berhasil di tambahkan' );
  }

  function show(User $user){
    $data['user']=$user;
    return view('template.user.show', $data);
  }

  function edit(User $user){
    $data['user']= $user;
    return view('template.user.edit', $data);
  }

  function update(User $user){
    $user->nama = request('nama');
    $user->username = request('username');
    $user->email = request('email');
   if(request('password'))$user->password = bcrypt(request('password'));
    $user->save();

    return redirect('admin/user')->with('success','berhasil di Edit' );
  }

  function destroy(User $user){
    $user->delete();
    return redirect('admin/user')->with('danger','berhasil di hapus' );
  }
}