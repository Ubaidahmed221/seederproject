<h1 class="text-center">User Detail</h1>

@foreach ($data as $user )
<h3>Id : {{ $user->id }}</h3>
<h3>Name : {{ $user->name }}</h3>
<h3>Email : {{ $user->email }}</h3>
<h3>Age : {{ $user->age }}</h3>
<h3>City : {{ $user->city }}</h3>


@endforeach
