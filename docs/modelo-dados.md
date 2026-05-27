### Entidades do Modelo de Dados

#### `pontos_coleta`
| Atributo |
| :--- |
| id |
| nome |
| endereço |
| bairro |
| cidade |
| contato |
| link_maps |
| observação |

#### `materiais_aceitos`
| Atributo |
| :--- |
| id_material |
| id_ponto |
| tipo_material |
| aceita (booleano) |
| observação |

#### `procedimentos_descarte`
| Atributo |
| :--- |
| id |
| id_ponto |
| horário |
| agendamento |
| custo |
| modalidade |
| descrição |

#### `evidencias`
| Atributo |
| :--- |
| id |
| id_ponto |
| tipo |
| descrição |
| arquivo/link |
| data_verificação |

#### `analises_criticas`
| Atributo |
| :--- |
| id |
| cidade |
| facilidade |
| dificuldades |
| divulgação |
| melhorias |
