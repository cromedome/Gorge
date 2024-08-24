package Gorge;
use Dancer2;
use Dancer2::Plugin::Database;

our $VERSION = '0.1';

get '/' => sub {
    # Make sure we don't keep any choices from last time
    app->destroy_session;

    # quick_select mangles our order by. Boo!
    my $sth = database->prepare( qq{
        SELECT question_id, question
        FROM questions
        ORDER BY RANDOM()
        LIMIT 1
    });
    $sth->execute;
    my $question = $sth->fetchrow_hashref;
    my @answers = database->quick_select(
        'answers', { question_id => $question->{ question_id } },
    );

    template 'index', {
        gotcha  => $question,
        answers => \@answers,
    };
};

post "/quest" => sub {
    # Save these so we have them when we ask for JSON later
    my $name = body_parameters->get( 'name' );
    session name  => $name;
    session quest => body_parameters->get( 'quest' );

    my $a = database->quick_select(
        'answers', { answer_id => body_parameters->get( 'answer' ) } );
    session answer => $a->{ answer };

    if( $a->{ is_correct } ) {
        debug "Answer is correct";
        database->quick_insert( 'crossers', { name => $name  } );

        if( $a->{ casts_keeper } ) {
            debug "Off he goes!";
            template 'you-have-to-know-these-things';
        } else {
            debug "You may cross";
            forward '/off-you-go', {}, { method => 'GET' };
        }
    } else {
        debug "No other conditions matched";
        forward '/into-the-gorge', {}, { method => 'GET' };
    }
};

get "/off-you-go" => sub {
    template 'off-you-go';
};

get "/into-the-gorge" => sub {
    template 'cast-into-gorge';
};

get "/my-quest" => sub {
    my @response;
    foreach my $param ( qw( name quest swallow ) ) {
        push @response, { $param => session->read( $param ) };
    }
    send_as JSON => \@response;
};

get '/crossers' => sub {
    my @crossers = database->quick_select( 'crossers', { } );
    template 'crossers', { crossers => \@crossers };
};

true;
