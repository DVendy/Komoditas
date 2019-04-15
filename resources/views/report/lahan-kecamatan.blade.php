<table>
	<tbody>
		<tr>
			<td colspan="2">Kecamatan : {{ $data['kecamatan_name'] }}</td>
		</tr>
		<tr>
			<td colspan="2">Komoditas : {{ $index }}</td>
		</tr>
		<tr>
			<td colspan="2">Periode : {{ $data['periode'] }}</td>
		</tr>
		<tr>
			<td><b>Tanggal</b></td>
			@foreach($data['desas'] as $val)
			<td><b>{{ $val }}</b></td>
			@endforeach
		</tr>
		@foreach($data['period'] as $date)
		@php
			$cd = $date->format('Y-m-d');
		@endphp
		
		<tr>
			<td><b>{{ $date->format('d F') }}</b></td>
			@foreach($data['desas'] as $desa)
			<td>{{ isset($data['hasil'][$index][$desa][$cd]) ? $data['hasil'][$index][$desa][$cd] : '0' }}</td>
			@endforeach
		</tr>
		@endforeach
	</tbody>
</table>