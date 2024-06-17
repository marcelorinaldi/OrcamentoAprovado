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
      <Text style={css.text}>Administrador: {nome}</Text>
      <Text> </Text>
      <Text> </Text>
      <Image source={require('./assets/orcamento.png')} style={css.logo}></Image>
        <View style={css.principalinicial}>
          <View>
            <Button title='Novo Usuário' color="green" onPress={() => navigation.navigate('TelaCadastro')}></Button>
          </View>
          <View>
            <Button title='Select' color="green" onPress={() => navigation.navigate('TelaSelect')}></Button>
          </View>
        </View>
        <View style={css.principalinicial}>
          <View>
            <Button title='Novo Orçamento' color="green" onPress={() => navigation.navigate('TelaInsert')}></Button>
          </View>
          <View>
            <Button title='Delete' color="green" onPress={() => navigation.navigate('TelaDelete')}></Button>
          </View>
        </View>
      <View style={css.principalinicial}>
        <View>
          <Button title='Sair' color="green" onPress={() => navigation.navigate('TelaLogin')}></Button>
        </View>
        <View>
          <Button title='Busca' color="green" onPress={() => navigation.navigate('TelaBusca')}></Button>
        </View>
      </View>
      <View style={css.principalinicial}>
        <View>
          <Button title='Pagamento' color="green" onPress={() => navigation.navigate('TelaPagamento')}></Button>
        </View>
        <View>
          <Button title='A pagar' color="green" onPress={() => navigation.navigate('TelaApagar')}></Button>
        </View>
        <View>
          <Button title='Pagas' color="green" onPress={() => navigation.navigate('TelaPagas')}></Button>
        </View>
      </View>
    </View>

  );
}
export default TelaInicial;
