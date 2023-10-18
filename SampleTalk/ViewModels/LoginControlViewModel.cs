using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Web.WebView2.Wpf;
using Newtonsoft.Json.Linq;
using RestSharp;
using SampleTalk.KakaoAPIs;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;

namespace SampleTalk.ViewModels
{
    public partial class LoginControlViewModel : ObservableObject
    {
        [ObservableProperty]
        private ObservableCollection<string> _emails;

        [ObservableProperty]
        private string _customText;

        private Window? loginWindow;
        private WebView2? _webView2;

        public LoginControlViewModel()
        {
            Emails = new ObservableCollection<string>()
            {
                "test1@test.com",
                "test2@test.com",
            };
        }

        private void _webView_NavigationCompleted(object? sender, Microsoft.Web.WebView2.Core.CoreWebView2NavigationCompletedEventArgs e)
        {

            Debug.WriteLine($"HttpStatus: {e.HttpStatusCode}, {e.IsSuccess}");
            string code = getCode();

            if (code != "")
            {
                KakaoConfig.USER_TOKEN = code;
                KakaoConfig.ACCESS_TOKEN = getToken();

                Debug.WriteLine($"USER TOKEN: {KakaoConfig.USER_TOKEN}");
                Debug.WriteLine($"ACCESS TOKEN: {KakaoConfig.ACCESS_TOKEN}");

                loginWindow!.Close();
            }
        }

        //인가 코드 요청하기
        private string getCode()
        {
            string url = _webView2!.Source.ToString();
            string token = url.Substring(url.IndexOf("=") + 1);

            if (url.CompareTo(KakaoConfig.REDIRECT_URL + "?code=" + token) == 0)
            {
                return token;
            }
            else
            {
                return "";
            }
        }

        private string getToken()
        {
            var client = new RestClient(KakaoConfig.HOST_OAUTH_URL);

            var request = new RestRequest("/oauth/token", RestSharp.Method.Post);
            request.AddParameter("grant_type", "authorization_code");
            request.AddParameter("client_id", KakaoConfig.API_KEY);
            request.AddParameter("redirect_uri", KakaoConfig.REDIRECT_URL);
            request.AddParameter("code", KakaoConfig.USER_TOKEN);

            var result = client.Execute(request);
            var json = JObject.Parse(result.Content!);

            return json["access_token"]!.ToString();
        }

        [RelayCommand]
        public void LoginWithKakao()
        {
            _webView2 = new WebView2();
            _webView2.Source = new Uri(KakaoConfig.LOGIN_URL);
            _webView2.NavigationCompleted += _webView_NavigationCompleted;

            Grid mainGrid = new Grid();
            mainGrid.Children.Add(_webView2);

            loginWindow = new Window();
            loginWindow.Content = mainGrid;
            loginWindow.Show();
        }

        [RelayCommand]
        public void LogoutKakao()
        {
            var client = new RestClient(KakaoConfig.HOST_API_URL);
            //로그아웃 요청하기
            var request = new RestRequest("/v1/user/unlink", RestSharp.Method.Post);
            request.AddHeader("Authorization", "bearer " + KakaoConfig.ACCESS_TOKEN);

            if (client.Execute(request).IsSuccessful)
            {
                MessageBox.Show("카카오 로그아웃");
            }
        }

        [RelayCommand]
        public void SendCustomMessage()
        {
            //JSON 구성
            JObject link = new JObject
            {
                { "web_url", "https://developers.kakao.com" },
                { "mobile_web_url", "https://developers.kakao.com" }
            };

            JObject send = new JObject
            {
                { "object_type", "text" },
                { "text", CustomText },
                { "link", link },
                { "button_title", "버튼 이름" }
            };

            //요청
            var client = new RestClient(KakaoConfig.HOST_API_URL);
            var request = new RestRequest("/v2/api/talk/memo/default/send", RestSharp.Method.Post);
            request.AddHeader("Authorization", "bearer " + KakaoConfig.ACCESS_TOKEN);
            request.AddParameter("template_object", send.ToString());

            var response = client.Execute(request);

            if (response.IsSuccessful)
            {
                MessageBox.Show("메시지 전송 성공!");
            }
            else
            {
                MessageBox.Show("메시지 전송 실패!");
            }
        }

        [RelayCommand]
        public void SendTemplateMessage()
        {
            //요청
            var client = new RestClient(KakaoConfig.HOST_API_URL);
            var request = new RestRequest("/v2/api/talk/memo/send", RestSharp.Method.Post);
            request.AddHeader("Authorization", "bearer " + KakaoConfig.ACCESS_TOKEN);
            request.AddParameter("template_id", KakaoConfig.TEMPLATE_ID);

            var response = client.Execute(request);

            if (response.IsSuccessful)
            {
                MessageBox.Show("메시지 전송 성공!");
            }
            else
            {
                MessageBox.Show("메시지 전송 실패!");
            }
        }
    }
}
