@extends('layouts.app')

@section('content')
<div class="">
    @include('conversations.users', ['users' => $users])
</div>
@endsection