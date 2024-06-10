import React from 'react';
import { Text, View, Button, Image } from 'react-native';
import css from './estilo/estilo';


function TelaInicial({ navigation, route }) {

  if (route.params && Object.keys(route.params).length > 0) {
    var { id, nome } = route.params;
    //alert('bem vindo'+id+'|'+nome);
  } else {
    ///var id = 21;
    // alert('nok');
    var id = '';
    var nome = '';
  }

  return (
    <View style={css.container}>
      <Image source={require('./assets/logo1.jpg')} style={css.logo}></Image>
      <View style={css.principal}>
        <View>
          <Button title='Novo Usuário' color='#154360' onPress={() => navigation.navigate('TelaCadastro')}></Button>
        </View>
        <View>
          <Button title='Select' color='#154360' onPress={() => navigation.navigate('TelaSelect')}></Button>
        </View>
        <View>
          <Button title='Novo Orçamento' color='#154360' onPress={() => navigation.navigate('TelaInsert')}></Button>
        </View>
        <View>
          <Button title='Delete' color='#154360' onPress={() => navigation.navigate('TelaDelete')}></Button>
        </View>
        <View>
          <Button title='Sair' color='#154360' onPress={() => navigation.navigate('TelaLogin')}></Button>
        </View>
        <View>
          <Button title='Busca' color='#154360' onPress={() => navigation.navigate('TelaBusca')}></Button>
        </View>
      </View>
    </View>
  );
}
export default TelaInicial;
