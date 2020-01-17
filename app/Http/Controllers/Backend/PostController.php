<?php

namespace App\Http\Controllers\Backend;

use App\Post;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use SebastianBergmann\CodeCoverage\Report\Html;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;

class PostController extends Controller
{
    public function __construct() {
    	$this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data_post = DB::table('post')
            ->select(
                'post.id'
            ,   'post.title'
            ,   'post.content'
            ,   'post.author'
            ,   'post.mime'
            ,   'post.original_filename'
            ,   'post.filename'
            ,   'post.slug'
            ,   'category.category_nm'
            ,   'post.register'
            ,   'post.register_date'
            ,   'post.updater'
            ,   'post.updater_date'
            )
            ->leftJoin('category', 'post.category_id', '=', 'category.id')
            ->where('post.del_flg',0)
            ->get();
        return view("backend.post.index")->with([
            'data_post' => $data_post,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // var_dump($request->title);
        // die;
        // 
        $categories = DB::table('category')->get();
        return view("backend.post.add_post")->with([
            'categories' => $categories,
        ]);  
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $curTime = new \DateTime();
        request()->validate([
            'title'  => 'required',
            'author' => 'required',
        ]);

        $info_image = $request->file('bookcover');
        $extension = $info_image->getClientOriginalExtension();
        Storage::disk('public')->put($info_image->getFilename().'.'.$extension,  File::get($info_image));

        $post = new Post();
        $post->title         = $request->title;
        $post->content       = $request->content;
        $post->author        = $request->author;
        $post->category_id   = $request->category_id;
        $post->category_other  = 0;
        $post->slug          = $request->slug;
        $post->register         = 'admin';
        $post->register_date    = $curTime;
        $post->updater          = 'admin';
        $post->updater_date     = $curTime;
        $post->del_flg          = 0;
        //image
        $post->mime     = $info_image->getClientMimeType();
        $post->original_filename = $info_image->getClientOriginalName();
        $post->filename = $info_image->getFilename().'.'.$extension;
        if ($post->save()) {
            $request->session()->flash('alert-success', 'Thêm dữ liệu thành công!');
            return redirect('admin/bai-viet');
        }
        //redirect()->route('profile', ['id' => 1]);
        // return redirect()->route('/admin/bai-viet')
        //     ->with('success','Post added successfully...');
       
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $upd_post = Post::where('id', $id)->first();
        $categories = DB::table('category')->get();

        foreach($categories as $key => $row) 
        {      
            $row->value_check_selected = $upd_post->id;
        }
        
        //dd();

        
        return view("backend.post.update_post")->with([
            'categories' => $categories,
            'upd_post' => $upd_post
        ]); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $result = DB::table('post')
            ->where("post.id",$id)
            ->update([
                "del_flg" => 1
            ]);
        if ($result) {
            return response()->json([
             'status' => 'OK'
            ]);
        }
    }
}
