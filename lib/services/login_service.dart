class LoginService {
  String login(String email, String password) {
    if (email == 'jorge@teste.com' && password == '123456') {
      return 'Login efetuado com sucesso';
    } else {
      print('Login failed');
      return 'Email ou senha inválidos';
    }
  }
}
