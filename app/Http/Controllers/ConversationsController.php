<?php

namespace App\Http\Controllers;

use App\User;
use App\Repository\ConversationRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\AuthManager;

class ConversationsController extends Controller
{
    /**
     * @var ConversationRepository
     */
    private $r;

     /**
      * @var AuthManager
      */
    private $auth;

    public function __construct(ConversationRepository $conversationRepository, AuthManager $auth){
        $this->r = $conversationRepository;
        $this->auth = $auth;
    }

    public function index(){
        $users = User::select('name', 'id')->where('id', '!=', Auth::user()->id)->get();
        return view('conversations/index', [
            'users' => $this->r->getConversation($this->auth->user()->id)
        ]);
    }

    public function show(User $user){
        $users = User::select('name', 'id')->where('id', '!=', Auth::user()->id)->get();
        return view('conversations/show', [
            'users' => $this->r->getConversation($this->auth->user()->id),
            'user' => $user
        ]);

    }
}
