
@extends('backend.dashboard')

	<!-- datatables -->
	<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	
	<script>
      $(document).ready(function() {
          $('#category').DataTable();
      });
    </script>

@section('content')

<?php 
	function showCategories($categories, $parent_id = 0, $char = '')
    {
        foreach ($categories as $key => $items) 
        {
            if ($items->parent_id == $parent_id) 
            {
                echo '<option value="'.$items->id.'">'.$char.$items->category_nm.'</option>';
                unset($categories[$key]);
                showCategories($categories, $items->id, $char.'|---');
            }

        }
    }
?>

<div class="row fontText">
	<div class="col-md-12 flash-message">
           @foreach (['danger', 'warning', 'success', 'info'] as $msg)
               @if(Session::has('alert-' . $msg))
                   <p class="alert alert-{{ $msg }}" style="color: green">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
               @endif
           @endforeach
    </div> <!-- end .flash-message -->
	<div class="col-md-12">
		<div class="tile">
			<h3 class="tile-title">Quản lý danh mục</h3>
		</div>
	</div>
	<div class="col-md-8">
      <div class="tile">
        <h3 class="tile-title">Hiển thị danh sách danh mục</h3>
        <!-- <a id="add_new" class="btn btn-primary col-md-6" href="{{ asset("admin/danh-muc/them-moi") }}">Thêm mới</a> -->
        <table id="category" class="display" width="100%" cellspacing="0">
        	<thead>
	            <tr>
	                <th>Tên danh mục</th>
					<th>Slug</th>
					<th>Người tạo</th>
					<th>Thời gian tạo</th>
					<th>Người sửa đổi</th>
					<th>Ngày sửa đổi</th>
	            </tr>
	        </thead>
	        <tbody>
	            @if(isset($categories))
			 		@foreach($categories as $row)
	         			<tr>		 
					 		<td>{{$row->category_nm}}</td>
						 	<td>{{$row->slug}}</td>
						 	<td>{{$row->register}}</td>
						 	<td>{{$row->register_date}}</td>
						 	<td>{{$row->updater}}</td>
						 	<td>{{$row->updater_date}}</td>
		         		</tr>
	 				@endforeach
			 	@endif
	        </tbody>
	        <tfoot>
	            <tr>
	                <th>Tên danh mục</th>
					<th>Slug</th>
					<th>Người tạo</th>
					<th>Thời gian tạo</th>
					<th>Người sửa đổi</th>
					<th>Ngày sửa đổi</th>
	            </tr>
	        </tfoot>
	    </table>
      </div>
    </div>
    <div class="col-md-4">
      <div class="tile">
        <h3 class="tile-title">Thêm mới danh mục</h3>
          	<form action="/action_page.php">
			  <div class="form-group">
			    <label for="category_nm">Tên danh mục</label>
			    <input type="text" id="category_nm" class="form-control" placeholder="Nhập tên danh mục" >
			  </div>

			   <div class="form-group">
			    <label for="parent_id">Thuộc danh mục</label>
			    <select class="form-control" id="parent_id">
			      <option value="0">Tạo mới (Không thuộc danh mục nào)</option>
			      {{showCategories($categories)}}
			    </select>
			  </div>

			  <div class="form-group">
			    <label for="pwd">Slug</label>
			    <input type="text" id="slug" class="form-control" placeholder="Nhập tên danh mục dưới dạng 'ten-danh-muc', (tên không dấu và cách nhau bởi dấu - )" >
			  </div>

			  <button type="button" id="btn-add" class="btn btn-primary">Thực hiện</button>
			</form>
       
      </div>
    </div>
    
 </div>
@stop
