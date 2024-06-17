import React from 'react';
import { Text, View, Button, Image, TouchableOpacity } from 'react-native';
import css from './estilo/estilo';
import Menu from './Menu';

function TelaInicial({ navigation, route }) {
  let id = '';
  let nome = '';
  if (route.params && Object.keys(route.params).length > 0) {
    ({ id, nome } = route.params);
  }

  return (
    <View style={css.container}>
      <Text style={css.text}>Administrador: {nome}</Text>
      <Text> </Text>
      <Text> </Text>
      <Image source={require('./assets/orcamento.png')} style={css.logo}></Image>
      <Menu navigation={navigation} />
    </View>
  );
}
export default TelaInicial;
