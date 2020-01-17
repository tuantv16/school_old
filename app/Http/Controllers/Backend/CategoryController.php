<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Category;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
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
        $categories = DB::table('category')->get();
        return view("backend.category.index")->with([
            'categories' => $categories,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $curTime = new \DateTime();

        $category_nm = $request->category_nm;
        $parent_id = $request->parent_id;
        $slug = $request->slug;
        
        $category = new Category();
        $category->category_nm      = $request->category_nm;
        $category->parent_id        = $request->parent_id;
        $category->slug             = $request->slug;
        $category->register         = 'admin';
        $category->register_date    = $curTime;
        $category->updater          = 'admin';
        $category->updater_date     = $curTime;
        $category->del_flg          = 0;
        if ($category->save()) {
            $request->session()->flash('alert-success', 'Thêm dữ liệu thành công!');
            return back();
        }
        //$data = Member::where('member_id', $member_id)->first();
        // $view = view('backend.member.update')
        //     ->with('data', $data)->render();
        // return response()->json([
        //     'viewUpdate' => $view
        // ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
