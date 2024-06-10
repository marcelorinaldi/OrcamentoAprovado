import React, { useState, useEffect } from 'react';
import { Text, View, Button, TextInput, Alert, TouchableOpacity, Image, SafeAreaView, ScrollView } from 'react-native';
import css from './estilo/estilo';
import axios from 'axios';

function TelaInsert({ navigation }) {
  const [nome, setNome] = useState('');
  const [receitas, setReceitas] = useState('');
  const [despesas, setDespesas] = useState('');
  const [obs, setObs] = useState('');

  cadastrar = () => {
    let token = 'Q!W@ee344%%R';
    if (nome.trim() !== '' && receitas.trim() !== '' && despesas.trim() !== '') {
      alert(nome + '\n cadastrado com sucesso!');
      axios.post('http://192.168.56.2/api/insert/', { token, nome, receitas, despesas, obs })
        // axios.post('https://api.semlimite.app.br/insert/', { token, nome, valor, imagem, quantidade })
        .then(response => {
          const data = response.data;
          aviso = 0;
        })
        .catch(error => {
          console.log('Erro ao enviar dados:', error);
        });
      navigation.navigate('TelaRetorno');
    } else {
      alert('Preencher Campos!!!');
    }
  }
  limpar = () => {
    setNome('');
    setReceitas('');
    setDespesas('');
    setObs('');
  }
  return (
    <View style={css.container}>
      <Text> </Text>
      <Text> </Text>
      <TouchableOpacity onPress={() => navigation.navigate('TelaInicial')}>
        <Image source={require('./assets/logo2.png')} style={css.logox}></Image>
      </TouchableOpacity>

      <Text>Novo Orçamento</Text>
      <SafeAreaView style={css.container}>
        <View>
          <Text>Nome</Text>
          <TextInput placeholder="" style={css.campo} onChangeText={(text) => setNome(text)} value={nome}></TextInput>
          <Text>Receitas R$</Text>
          <TextInput placeholder="" style={css.campo} onChangeText={(text) => setReceitas(text)} value={receitas}></TextInput>
          <Text>Despesas R$</Text>
          <Text></Text><TextInput placeholder="" style={css.campo} onChangeText={(text) => setDespesas(text)} value={despesas}></TextInput>
          <Text>Observações</Text>
          <ScrollView style={css.scrollView}>
            <TextInput style={css.scroll} onChangeText={(text) => setObs(text)} value={obs}></TextInput>
          </ScrollView>
          <View style={css.viewbotoes}>
            <View><Button title="Limpar" color='#154360' onPress={limpar} /></View>
            <View><Button title="Adicionar Produto" color='#154360' onPress={cadastrar} /></View>
          </View>
        </View>
      </SafeAreaView>
      <Text> </Text>
    </View>
  );
}
export default TelaInsert;
