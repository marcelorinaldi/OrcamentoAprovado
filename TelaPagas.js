import React, { useState, useEffect } from 'react';
import { Text, FlatList, TouchableOpacity, View, Image } from 'react-native';
import css from './estilo/estilo';
import Menu from './Menu';

function TelaSelect({ navigation }) {
  const [users, setUsers] = useState([]);

  // carrega dados da api 
  useEffect(() => {
    fetch('http://192.168.56.2/api/select_pagas/')
      .then(response => response.json())
      .then(data => setUsers(data))
      .catch(error => alert('Sem Registro'));
  }, []);

  // vai direcionar para a tela de edição 
  const aviso = (a, b, c, d, e) => {
    navigation.navigate('TelaUpdate', { id: a, nome: b, receitas: c, despesas: d, obs: e });
  };

  return (
    <View style={css.container}>
      <Text> </Text>
      <Text> </Text>
      <TouchableOpacity onPress={() => navigation.navigate('TelaInicial')}>
        <Image source={require('./assets/orcamento.png')} style={css.logo} />
      </TouchableOpacity>
      <Text></Text>
      <Text style={css.text}>Despesas Pagas: {users.length}</Text>
      <FlatList
        data={users}
        keyExtractor={item => item.id.toString()}
        renderItem={({ item }) => (
          <TouchableOpacity onPress={() => aviso(item.id, item.nome, item.receitas, item.despesas, item.obs)}>
            <View>
              <View style={css.viewnumero2}>
                <View style={css.principal2}>
                </View>
              </View>
              <View style={css.principal}>
                {/* <View style={css.viewnumero3}>
                  <View>
                  {
                    item.imagem == "" ? (
                      <Image source={require('./assets/sem.png')} style={css.icone} />
                      ) : (
                        <Image source={{ uri: item.imagem }} style={css.icone} />
                        )
                      }
                      </View>
                    </View> */}
                <View style={css.viewletra}>
                  <Text style={css.letra2}>{item.id} - {item.nome ? item.nome.substring(0, 32) : ''}</Text>
                  <Text style={css.letra3}>Receitas: R$ {item.receitas}</Text>
                  <Text style={css.letra3}>Despesas: R$ {item.despesas}</Text>
                  <Text style={css.letra3}>Observações: {item.obs}</Text>
                </View>
              </View>
            </View>
          </TouchableOpacity>
        )}
      />
      <Menu navigation={navigation} />
    </View>
  );
}

export default TelaSelect;
