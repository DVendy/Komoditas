<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::defaultStringLength(191);
		
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('phone')->unique();
            $table->string('password');
            $table->string('role');
			$table->longText('other')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });

        Schema::create('provinsi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
			$table->longText('other')->nullable();
            $table->timestamps();
        });

        Schema::create('kabupaten', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('provinsi_id')->unsigned();
            $table->string('name');
			$table->longText('other')->nullable();
            $table->timestamps();

            $table->foreign('provinsi_id')
            ->references('id')->on('provinsi')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });

        Schema::create('kecamatan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('kabupaten_id')->unsigned();
            $table->string('name');
			$table->longText('other')->nullable();
            $table->timestamps();

            $table->foreign('kabupaten_id')
            ->references('id')->on('kabupaten')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });

        Schema::create('desa', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('kecamatan_id')->unsigned();
            $table->string('name');
			$table->longText('other')->nullable();
            $table->timestamps();

            $table->foreign('kecamatan_id')
            ->references('id')->on('kecamatan')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });

        Schema::create('fase', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('name');
			$table->integer('urutan')->default(0);
			$table->longText('other')->nullable();
            $table->timestamps();
        });
		
		Schema::create('lahan', function (Blueprint $table){
			$table->bigIncrements('id');
            $table->bigInteger('pengurus_id')->unsigned()->nullable();
            $table->bigInteger('desa_id')->unsigned()->nullable();
			$table->longText('other')->nullable();
            $table->string('name');
            $table->string('lat');
            $table->string('long');
			$table->decimal('luas', 10, 4);
			$table->longText('pemilik')->nullable();
            $table->timestamps();

            $table->foreign('desa_id')
            ->references('id')->on('desa')
            ->onDelete('set null')
            ->onUpdate('cascade');

            $table->foreign('pengurus_id')
            ->references('id')->on('users')
			->onDelete('set null')
            ->onUpdate('cascade');
        });

        Schema::create('komoditas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('type');
			$table->longText('other')->nullable();
            $table->timestamps();
        });

        Schema::create('asset', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('type');
			$table->longText('other')->nullable();
            $table->timestamps();
        });

        Schema::create('komoditas_lahan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('komoditas_id')->unsigned();
            $table->bigInteger('lahan_id')->unsigned();
            $table->bigInteger('fase_id')->unsigned()->nullable();
			$table->decimal('luas', 10, 4)->nullable();
			$table->decimal('jumlah', 10, 4)->nullable();
			$table->longText('other')->nullable();
            $table->timestamps();

            $table->foreign('komoditas_id')
            ->references('id')->on('komoditas')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('lahan_id')
            ->references('id')->on('lahan')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('fase_id')
            ->references('id')->on('fase')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });

        Schema::create('komoditas_lahan_gudang', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('komoditas_id')->unsigned();
            $table->bigInteger('lahan_id')->unsigned();
			$table->decimal('jumlah', 10, 4)->nullable();
			$table->longText('other')->nullable();
            $table->timestamps();

            $table->foreign('komoditas_id')
            ->references('id')->on('komoditas')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('lahan_id')
            ->references('id')->on('lahan')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });

        Schema::create('asset_lahan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('asset_id')->unsigned();
            $table->bigInteger('lahan_id')->unsigned();
			$table->decimal('jumlah', 10, 4)->nullable();
			$table->longText('other')->nullable();
            $table->timestamps();

            $table->foreign('asset_id')
            ->references('id')->on('asset')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('lahan_id')
            ->references('id')->on('lahan')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });

        Schema::create('panen', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('lahan_id')->unsigned();
            $table->bigInteger('komoditas_id')->unsigned();
			$table->decimal('hasil', 10, 4);
			$table->longText('other')->nullable();
            $table->timestamps();

            $table->foreign('lahan_id')
            ->references('id')->on('lahan')
            ->onDelete('cascade')
            ->onUpdate('cascade');

            $table->foreign('komoditas_id')
            ->references('id')->on('komoditas')
            ->onDelete('cascade')
            ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('provinsi');
        Schema::dropIfExists('kabupaten');
        Schema::dropIfExists('kecamatan');
        Schema::dropIfExists('desa');
        Schema::dropIfExists('fase');
        Schema::dropIfExists('lahan');
        Schema::dropIfExists('komoditas');
        Schema::dropIfExists('asset');
        Schema::dropIfExists('komoditas_lahan');
        Schema::dropIfExists('komoditas_lahan_gudang');
        Schema::dropIfExists('asset_lahan');
        Schema::dropIfExists('panen');
    }
}
