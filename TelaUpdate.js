import React, { useState, useEffect } from 'react';
import { Text, FlatList, TouchableOpacity, View, Button, TextInput, Alert, Image } from 'react-native';
import css from './estilo/estilo';
import axios, { toFormData } from 'axios';


function TelaEditar2({ navigation, route }) {
  const [users, setUsers] = useState([]);
  const [users2, setUsers2] = useState([]);
  let token = 'Q!W@ee344%%R2';

  const [nome2, setNome] = useState('');
  const [receitas2, setReceitas] = useState('');
  const [despesas2, setDespesas] = useState('');
  const [obs2, setObs] = useState('');

  if (route.params && Object.keys(route.params).length > 0) {
    var { id, nome } = route.params;
  } else {
    var id = 21;
  }

  useEffect(() => {
    fetchProduct();
  }, []);

  // carrega os dados 
  const fetchProduct = () => {
    //axios.get(`https://api.semlimite.app.br/select_um/?token=${token}&id=${id}`)
      axios.get(`http://192.168.56.2/api/select_um/?token=${token}&id=${id}`)    
      .then(response => {
        setUsers2(response.data);
      })
      .catch(error => {
        console.error(error);
      });
  }

  cadastrar = () => {
    let token = 'Q!W@ee344%%R';
    if (nome2.trim() !== '' && receitas2.trim() !== '' && despesas2.trim() !== '') {
     // axios.post('https://api.semlimite.app.br/update/', { token, a: id, nome2, valor2, imagem2, quantidade2 })
         axios.post('http://192.168.56.2/api/update/', {token,a:id,nome2,receitas2,despesas2,obs2})    
        .then(response => {
          const data = response.data;
          console.log(data);
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

  useEffect(() => {
    // Função para extrair e formatar os dados quando o componente for montado
    const extrairDados = () => {
      if (users2 && users2.length > 0) {
        const primeiroItem = users2[0]; // Vamos extrair dados apenas do primeiro item por enquanto
        const { nome, receitas, despesas, obs } = primeiroItem;

        // Agora você pode fazer o que quiser com esses dados formatados
        // Por exemplo, você pode armazená-los no estado para usar na renderização
        //setDadosFormatados({nome });
        setNome(nome);
        setReceitas(receitas);
        setDespesas(despesas);
        setObs(obs);
      }
    };
    extrairDados();

    // Retornar uma função de limpeza se necessário
    return () => {
      // Alguma limpeza se necessário
    };
  }, [users2]);


  console.log('1_ ' + nome2);
  console.log('2_ ' + receitas2);
  console.log('3_ ' + despesas2);
  console.log('4_ ' + obs2);


  return (
    <View style={css.container}>
      <Text> </Text>
      <Text> </Text>
      <TouchableOpacity onPress={() => navigation.navigate('TelaInicial')}>
        <Image source={require('./assets/logo2.png')} style={css.logox}></Image>
      </TouchableOpacity>

      <Text></Text>
      <Text>Atualizar Cadastro</Text>
      <View>
        <Text>Orçamento</Text>
        <TextInput placeholder="Orçamento" style={css.campo} onChangeText={(text) => setNome(text)} value={nome2}></TextInput>
        <Text>Receitas R$</Text>
        <TextInput placeholder="0.00" style={css.campo} onChangeText={(text) => setReceitas(text)} value={receitas2}></TextInput>
        <Text>Despesas R$</Text>
        <TextInput placeholder="0.00" style={css.campo} onChangeText={(text) => setDespesas(text)} value={despesas2}></TextInput>
        <Text>Observações</Text>
        <TextInput placeholder="Obs:" style={css.campo} onChangeText={(text) => setObs(text)} value={obs2}></TextInput>
        <View style={css.principal}>
          {/* <View style={css.viewnumero3}>
            <View>
              {
                imagem2 == "" ? (
                  <Image source={require('./assets/sem.png')} style={css.icone} />
                ) : (
                  <Image source={{ uri: `${imagem2}` }} style={css.icone} />
                )
              }
            </View>
          </View> */}
          <View style={css.viewletra2}>
            <View><Button title="Limpar" color='#154360' onPress={limpar} /></View>
            <Text></Text>
            <View><Button title="Atualizar Produto" color='#154360' onPress={cadastrar} /></View>
                      </View>

        </View>

      </View>
      <Text> </Text>
    </View>
  );
}
export default TelaEditar2;