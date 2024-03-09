using Android.Content;
using anotacoesplus.Activities;

namespace anotacoesplus
{
    [Activity(Label = "@string/app_name", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle? savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);

           // SetAmbientEnabled();

            Button loginButton = FindViewById<Button>(Resource.Id.buttonLogin);

            loginButton.Click += LoginButton_Click;
        }
        private void LoginButton_Click(object sender, EventArgs e)
        {
            // Criar uma intenção (Intent) para iniciar a nova Activity
            Intent intent = new Intent(this, typeof(LoginActivity));

            // Iniciar a nova Activity
            StartActivity(intent);
        }
    }
}