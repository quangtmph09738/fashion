@extends('admin')
@section('layout')
<div class="container">
		<a href="#" class="btn btn-success btn-add" data-target="#modal-add" data-toggle="modal">Add</a>
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>name</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
						@foreach ($categorys as $category)
						<tr>
							<td id="{{$category->id}}">{{$category->id}}</td>
							<td id="hoten-{{$category->id}}">{{$category->name}}</td>
							<td>
								<button data-url=""​ type="button" data-target="#show" data-toggle="modal" class="btn btn-info btn-show">Detail</button>
								<button data-url=""​ type="button" data-target="#edit" data-toggle="modal" class="btn btn-warning btn-edit">Edit</button>
								<button data-url=""​ type="button" data-target="#delete" data-toggle="modal" class="btn btn-danger btn-delete">Delete</button>
							</td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
@include('adminlayout.category.addcategory')
    <!-- modal add -->
    
@endsection()