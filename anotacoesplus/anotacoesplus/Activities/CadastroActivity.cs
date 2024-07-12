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
using Firebase.Database.Query;

namespace anotacoesplus.Activities
{
    [Activity(Label = "com.guilhermee9.anotacoespp.CadastroActivity")]
    public class CadastroActivity : Activity
    {
        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            SetContentView(Resource.Layout.activity_cadastro);

            Button cadastrarButton = FindViewById<Button>(Resource.Id.cadastrarButton);
            cadastrarButton.Click += CadastrarButton_Click;
        }

        private async void CadastrarButton_Click(object sender, EventArgs e)
        {
            FirebaseClient firebase = new FirebaseClient("https://ifpr-alerts-default-rtdb.firebaseio.com/");
            var Nome = FindViewById<EditText>(Resource.Id.nomeEditText)?.Text;
            var CPF = FindViewById<EditText>(Resource.Id.cpfEditText)?.Text;
            var Telefone = FindViewById<EditText>(Resource.Id.TelefoneEditText)?.Text;
            var Email = FindViewById<EditText>(Resource.Id.emailEditText)?.Text;
            var Senha = FindViewById<EditText>(Resource.Id.passwordEditText)?.Text;
            var DataNasc = FindViewById<EditText>(Resource.Id.nascEditText)?.Text;
            var Campus = FindViewById<EditText>(Resource.Id.campusEditText)?.Text;

            if (string.IsNullOrEmpty(Nome) || string.IsNullOrEmpty(CPF) || string.IsNullOrEmpty(Telefone) || string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(Senha) || string.IsNullOrEmpty(DataNasc) || string.IsNullOrEmpty(Campus))
            {
                Toast.MakeText(this, "Todos os campos são obrigatórios", ToastLength.Short).Show();
                return;
            }

            var usuario = new Usuario
            {
                Nome = Nome,
                CPF = CPF,
                Telefone = Telefone,
                Email = Email,
                Senha = Senha,
                DataNasc = DataNasc,
                Campus = Campus
            };

            await firebase
                  .Child("usuarios")
                  .PostAsync(usuario);

            var usuarioAdicionado = (await firebase
              .Child("usuarios")
              .OnceAsync<Usuario>()).Select(item => new Usuario
              {
                  Nome = item.Object.Nome,
                  CPF = item.Object.CPF,
                  Telefone = item.Object.Telefone,
                  Email = item.Object.Email,
                  Senha = item.Object.Senha,
                  DataNasc = item.Object.DataNasc,
                  Campus = item.Object.Campus
              }).Where(item => item.Email == Email && item.Senha == Senha).FirstOrDefault();

            if (usuarioAdicionado != null)
            {
                try
                {
                    Toast.MakeText(this, "Usuário cadastrado com sucesso!", ToastLength.Short)?.Show();
                    Console.WriteLine("Usuário cadastrado com sucesso!");

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