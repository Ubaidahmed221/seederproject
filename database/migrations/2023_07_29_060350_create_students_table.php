<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id('s_id');
            $table->string('s_name',40);
            $table->integer('s_age');
            $table->string('s_email',40)->nullable()->unique();
            $table->string('s_addres');
            $table->string('s_city');
            $table->string('s_phone');
            $table->string('s_password');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
