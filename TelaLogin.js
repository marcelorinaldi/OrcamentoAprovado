import React, { useState, useEffect } from 'react';
import { Text, View, Button, TextInput, Alert, TouchableOpacity, Image } from 'react-native';
import css from './estilo/estilo';
import axios from 'axios';

function TelaLogin({ navigation }) {
  const [loginx, setLoginx] = useState('');
  const [senhax, setSenhax] = useState('');
  const [users, setUsers] = useState([]);

  const [id, setId] = useState('');
  const [nome, setNome] = useState('');

  useEffect(() => {
    setLoginx('');
    setSenhax('');
  }, []);

  let token = 'Q!W@ee344%%R';

  const autenticar = () => {
    axios.get(`http://192.168.56.2/api/select_login/?token=${token}&login=${loginx}&senha=${senhax}`)
      .then(response => {
        const data = response.data;
        console.log('API Response:', data);
        setUsers(data);

        if (data && data.length > 0) {
          const primeiroItem = data[0];
          const { id, nome } = primeiroItem;
          setNome(nome);
          setId(id);
          navigation.navigate('TelaInicial', { id, nome });
        } else {
          alert('Login ou senha incorretos.');
        }
      })
      .catch(error => {
        console.error('Network error:', error);
        alert('Erro de rede. Por favor, tente novamente mais tarde.');
      });
  }

  const logar = () => {
    if (loginx.trim() !== '' && senhax.trim() !== '') {
      autenticar();
    } else {
      alert('Por favor, preencha os campos!');
    }
  }

  const limpar = () => {
    setLoginx('');
    setSenhax('');
  }

  return (
    <View style={css.container}>
      <Text> </Text>
      <Text> </Text>

      <Image source={require('./assets/orcamento.png')} style={css.logo} />

      <Text>Bem vindo! Faça login ou cadastre-se!</Text>
      <View>
        <Text>Login</Text>
        <TextInput placeholder="" style={css.campo} onChangeText={(text) => setLoginx(text)} value={loginx} />
        <Text>Senha</Text>
        <TextInput placeholder="" style={css.campo} onChangeText={(text) => setSenhax(text)} value={senhax} secureTextEntry={true} />
        <View style={css.viewbotoes}>
          <View><Button title="Limpar" color="green" onPress={limpar} /></View>
          <View><Button title="Login"color="green" onPress={logar} /></View>
          <View><Button title='Cadastro' color="green" onPress={() => navigation.navigate('TelaCadastro')} /></View>
        </View>
      </View>
      <Text> </Text>
    </View>
  );
}

export default TelaLogin;
