Tabela: `evidencias`

Esta entidade é responsável por armazenar as comprovações visuais e de localização dos pontos de coleta, utilizando links do Google Maps e imagens do Street View.

**Atributos:**
* `id` (int/uuid): Identificador único da evidência.
* `id_ponto` (int/uuid): Chave estrangeira referenciando o ponto de coleta.
* `tipo` (string): Tipo da evidência (Ex: Link do Maps, Imagem Street View).
* `descrição` (string): Breve detalhamento sobre o que a evidência mostra, incluindo a cidade.
* `arquivo/link` (string): URL apontando para a evidência.
* `data_verificação` (date): Data em que o link/local foi validado.

**Exemplo de Dados Populados (Seed):**

| id | id_ponto | tipo | descrição | arquivo/link | data_verificação |
|:---|:---------|:-----|:----------|:-------------|:-----------------|
| 1 | 101 | Link Maps | Localização do ponto de coleta em Taió | [Acessar Local](https://www.google.com/maps/dir//HZtech,+Av.+Franz+Xavier+Mainhardt,+450+-+Sala+C+-+Padre+Eduardo,+Tai%C3%B3+-+SC,+89190-000/@-27.2097801,-49.6402432,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x94de2aeda750a883:0xbe87dfee96ed6798!2m2!1d-49.9974557!2d-27.1187551?entry=ttu&g_ep=EgoyMDI2MDUyMC4wIKXMDSoASAFQAw%3D%3D) | 2024-05-20 |
| 2 | 102 | Street View | Imagem da fachada do ponto em Ibirama | [Ver Fachada](https://www.google.com/local/place/fid/0x94dfad582bee16bb:0x144bddb1f3e09d64/photosphere?iu=https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid%3DssX9_PKAOtlz9nvtfY0VMw%26cb_client%3Dsearch.gws-prod.gps%26yaw%3D239.55202%26pitch%3D0%26thumbfov%3D100%26w%3D0%26h%3D0&ik=CAISFnNzWDlfUEtBT3RsejludnRmWTBWTXc%3D&sa=X&sqi=2&ved=2ahUKEwi3gKGvitiUAxVMqJUCHdePHP4Qpx96BAgaEBI) | 2024-05-20 |
| 3 | 103 | Street View | Imagem do local de descarte em Ibirama | [Ver Local](https://www.google.com/local/place/fid/0x94e01fa8d496cb33:0xff59d75584ffd000/photosphere?iu=https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid%3DxFad56kaxtFuo8UBZmqSqQ%26cb_client%3Dsearch.gws-prod.gps%26yaw%3D337.4035%26pitch%3D0%26thumbfov%3D100%26w%3D0%26h%3D0&ik=CAISFnhGYWQ1NmtheHRGdW84VUJabXFTcVE%3D&sa=X&ved=2ahUKEwjG3aegitiUAxVFrpUCHWvYFaEQpx96BAhDEBI) | 2024-05-21 |
| 4 | 104 | Link Maps | Localização do ponto de coleta em Ascurra | [Acessar Local](https://maps.app.goo.gl/Yg8TPHaaE6Rh4BiY7) | 2024-05-21 |
| 5 | 105 | Link Maps | Localização do segundo ponto em Ascurra | [Acessar Local](https://maps.app.goo.gl/Fj5uTEwwVeLdfbJn7) | 2024-05-22 |
| 6 | 106 | Link Maps | Localização do ponto de coleta em Rodeio | [Acessar Local](https://maps.app.goo.gl/tNmZ4qKK6eNAmECa6) | 2024-05-22 |

```
