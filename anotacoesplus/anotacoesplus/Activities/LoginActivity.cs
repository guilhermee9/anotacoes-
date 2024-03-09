using Android;

namespace anotacoesplus.Activities;

[Activity(Label = "com.guilhermee9.anotacoespp")]
public class LoginActivity : Activity
{
    protected override void OnCreate(Bundle? savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        SetContentView(Resource.Layout.activity_login);
    }
}