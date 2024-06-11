import React, { useState, useEffect } from 'react';
import { Text, View, Button, TextInput, Alert, TouchableOpacity, Image } from 'react-native';
import css from './estilo/estilo';
import axios from 'axios';

function TelaInsert({ navigation }) {
  const [nome, setNome] = useState('');
  const [login, setLogin] = useState('');
  const [senha, setSenha] = useState('');
  const [senha2, setSenha2] = useState('');


  

  cadastrar = () => {
    let token = 'Q!W@ee344%%R';
    if (senha2.trim() == senha.trim()) {
      if (nome.trim() !== '' && senha.trim() !== '') {
        alert(nome + '\n cadastrado com sucesso!');
        console.log(nome,login,senha);
        axios.post('http://192.168.56.2/api/cadastro/', { token, login, nome, senha })
        //axios.post('https://api.semlimite.app.br/cadastro/', { token, nome, login,senha })
          .then(response => {
            const data = response.data;
            aviso = 0;
          })
          .catch(error => {
            console.log('Erro ao enviar dados:', error);
          });
        navigation.navigate('TelaLogin');
      }else {
        alert('Preencher Campos!!!');
      }
    }else {
      alert('Senha diferentes');
    }
  }

limpar = () => {
  setNome('');
  setLogin('');
  setSenha('');
  setSenha2('');
}
return (
  <View style={css.container}>
    <Text> </Text>
    <Text> </Text>
    <TouchableOpacity onPress={() => navigation.navigate('TelaLogin')}>
      <Image source={require('./assets/logo2.png')} style={css.logox}></Image>
    </TouchableOpacity>

    <Text>Novo Usuário</Text>
    <View>
      <Text>Nome</Text>
      <TextInput placeholder="" style={css.campo} onChangeText={(text) => setNome(text)} value={nome}></TextInput>
      <Text>Login</Text>
      <TextInput placeholder="" style={css.campo} onChangeText={(text) => setLogin(text)} value={login}></TextInput>
      <Text>Senha</Text>
      <TextInput placeholder="" style={css.campo} onChangeText={(text) => setSenha(text)} value={senha}></TextInput>
      <Text>Confirmar Senha</Text>
      <TextInput placeholder="" style={css.campo} onChangeText={(text) => setSenha2(text)} value={senha2}></TextInput>
      <View style={css.viewbotoes}>
        <View><Button title="Limpar" color='#154360' onPress={limpar} /></View>
        <View><Button title="Cadastrar" color='#154360' onPress={cadastrar} /></View>
      </View>
    </View>
    <Text> </Text>
  </View>
);
  }
export default TelaInsert;

