<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class OAuthTest extends TestCase
{
    /**
     * A basic test example.
     *
     * @return void
     */
    public function getClientsTest()
    {
        $response = $this->get('/oauth/clients');

        $response->assertStatus(200);
    }
}
