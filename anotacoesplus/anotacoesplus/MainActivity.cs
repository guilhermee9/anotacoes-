using System;
using Android.App;
using Android.Widget;
using Android.OS;
using Android.Content;
using anotacoesplus.Activities;


namespace anotacoesplus
{
    [Activity(Label = "@string/app_name", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.activity_main);

            Button loginButton = FindViewById<Button>(Resource.Id.loginButton);
            loginButton.Click += LoginButton_Click;

            Button cadastrarButton = FindViewById<Button>(Resource.Id.cadastrarButton);
            cadastrarButton.Click += CadastrarButton_Click;

        }
        private void LoginButton_Click(object sender, EventArgs e)
        {
            // Criar uma intenção (Intent) para iniciar a nova Activity
            Intent intent = new Intent(this, typeof(LoginActivity));

            // Iniciar a nova Activity
            StartActivity(intent);
        }
        private void CadastrarButton_Click(object sender, EventArgs e)
        {
            // Criar uma intenção (Intent) para iniciar a CadastrarActivity
            Intent intent = new Intent(this, typeof(CadastroActivity));

            // Iniciar a CadastrarActivity
            StartActivity(intent);
        }
    }
}