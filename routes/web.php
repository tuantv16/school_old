<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/test', function () {
    return view('welcome');
});

Route::resource('post', 'PostController');

Route::get('about','Frontend\PostController@index');

Route::group(['prefix' => 'admin'], function () {
		// Đăng ký thành viên
	Route::get('register', 'Auth\RegisterController@getRegister');
	Route::post('register', 'Auth\RegisterController@postRegister');
	
	// Đăng nhập và xử lý đăng nhập
	Route::get('login', [ 'as' => 'login', 'uses' => 'Auth\LoginController@getLogin']);
	Route::post('login', [ 'as' => 'login', 'uses' => 'Auth\LoginController@postLogin']);
	
	// Đăng xuất
	Route::get('logout', [ 'as' => 'logout', 'uses' => 'Auth\LogoutController@getLogout']);




	Route::get('/dashboard', 'Backend\DashboardController@dashboard');
	Route::get('/danh-muc', 'Backend\CategoryController@index');
	Route::get('/danh-muc/them-moi', 'Backend\CategoryController@create');

	Route::get('/bai-viet', 'Backend\PostController@index');
	Route::get('/bai-viet/them-moi', 'Backend\PostController@create');
	Route::post('/bai-viet/luu-thong-tin', 'Backend\PostController@store');
	Route::get('/bai-viet/cap-nhat/{id}', 'Backend\PostController@edit');
	Route::get('/bai-viet/xoa/{id}', 'Backend\PostController@destroy');
	
	Route::post('ckeditor/image_upload', 'CKEditorController@upload')->name('upload');
});
