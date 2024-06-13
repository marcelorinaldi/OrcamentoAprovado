import React, { useState, useEffect } from 'react';
import { Text, FlatList, TouchableOpacity, View, Button, TextInput, Alert, Image } from 'react-native';
import css from './estilo/estilo';
import axios from 'axios';


function TelaPagamento({ navigation }) {
  const [users, setUsers] = useState([]);
  let token = 'Q!W@ee344%%R';
  useEffect(() => {
    fetch('http://192.168.56.2/api/select/')
  //fetch('https://api.semlimite.app.br/select/')
      .then(response => response.json())
      .then(data => setUsers(data))
      .catch(error => alert('Sem Registro'));
  }, []);


  const aviso = (a) => {
    if (a !== '') {

      //axios.post('https://api.semlimite.app.br/delete/', { token, a })
        axios.post('http://192.168.56.2/api/pagamento/',{token,a})
        .then(response => {
          const data = response.data;
        })
        .catch(error => {
          console.log('Erro ao enviar dados:', error);
        });
      navigation.navigate('TelaRetorno2');
    } else {
      alert('Nok');
    }
  }


  const pagar = (a, b) => {
    Alert.alert(
      'Atenção!',
      'Informar o pagamento? \n Id:' + a + '\n' + b + '',
      [
        {
          text: 'Sim',
          onPress: () => aviso(a)
        },
        {
          text: 'Não',
          onPress: () => console.log('Cancelado'),
          style: 'cancel'
        }
      ],
      { cancelable: false }
    );
  };

  return (
    <View style={css.container}>
      <Text> </Text>
      <Text> </Text>
      <TouchableOpacity onPress={() => navigation.navigate('TelaInicial')}>
        <Image source={require('./assets/logo2.png')} style={css.logox}></Image>
      </TouchableOpacity>
      <Text></Text>
      <Text>Informar Pagamento</Text>
      <FlatList
        data={users}
        keyExtractor={item => item.id.toString()}
        renderItem={({ item }) => (
          <TouchableOpacity onPress={() => pagar(item.id, item.nome)}>
            <View >
              <View style={css.viewnumero2}>
                <View style={css.principal2}>
                <Text style={css.letra2}>{item.id} - {item.nome.substring(0, 32)}</Text>
                </View>
              </View>

              <View style={css.principal}>
                {/* <View style={css.viewnumero3}>
                  <View>
                    {
                      item.imagem == "" ? (
                        <Image source={require('./assets/sem.png')} style={css.icone} />
                      ) : (
                        <Image source={{ uri: `${item.imagem}` }} style={css.icone} />
                      )
                    }
                  </View>
                </View> */}
                <View style={css.viewletra}>
                  <Text style={css.letra3}>Orçamento: {item.nome}</Text>
                  <Text style={css.letra3}>Receitas: R$ {item.receitas}</Text>
                  <Text style={css.letra3}>Despesas: R$ {item.despesas}</Text>
                  <Text style={css.letra3}>Observações: {item.obs}</Text>
                  <Text style={css.letra3}>{item.tempo}</Text>
                </View>
              </View>
            </View>
          </TouchableOpacity>
        )} />
      <Text> </Text>
    </View>
  );
}
export default TelaPagamento;
