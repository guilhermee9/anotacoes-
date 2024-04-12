using Android;
using Firebase.Database;
using anotacoesplus.BaseClasses;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace anotacoesplus.Activities
{
    [Activity(Label = "com.guilhermee9.anotacoespp.LoginActivity")]
    public class LoginActivity : Activity
    {
        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.activity_login);

            Button loginButton = FindViewById<Button>(Resource.Id.loginButton);
            loginButton.Click += LoginButton_Click;
        }

        private async void LoginButton_Click(object sender, EventArgs e)
        {
            FirebaseClient firebase = new FirebaseClient("https://ifpr-alerts-default-rtdb.firebaseio.com/");

            var email = FindViewById<EditText>(Resource.Id.emailEditText)?.Text;
            var password = FindViewById<EditText>(Resource.Id.passwordEditText)?.Text;

            var usuario = (await firebase
              .Child("usuarios")
              .OnceAsync<Usuario>()).Select(item => new Usuario
              {
                  Email = item.Object.Email,
                  Senha = item.Object.Senha
              }).Where(item => item.Email == email && item.Senha == password).FirstOrDefault();


            if (usuario != null)
            {
                try
                {
                    Toast.MakeText(this, "Usuário logado com sucesso!", ToastLength.Short)?.Show();
                    Console.WriteLine("Usuário logado com sucesso!");

                    Finish();
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Erro de autenticação: {ex.Message}");
                }
            }
            else
            {
                Toast.MakeText(this, "Usuário não encontrado!", ToastLength.Short)?.Show();
                Console.WriteLine("Usuário não encontrado!");
            }
        }




    }
}