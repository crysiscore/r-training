# carregar expicitamente as bibliotecas/package/
library('dplyr')  # tem funcoes para manipulacao de dados
library('writexl') # contem funcoes para gravar ficheiros em excell



# 1 - Indicar directorio principal de trabalho
setwd(dir = '~/Git/r-trainning/')
getwd()

# importar o ficheiro
df_33_dia_junho <-  readxl::read_xls('CCS_ACTUALMENTE_EM_TARV_33_DIAS_2022-07-18_CS_JUNHO.xls')

# importar o ficheiro substituir vazios com 99
df_33_dia_junho_formatado <- read_excel(path = 'CCS_ACTUALMENTE_EM_TARV_33_DIAS_2022-07-18_CS_JUNHO.xls',
                                        na = '99',sheet = 'Sheet1') 

# Mudar nomes de colunas
names(df_33_dia_junho_formatado)[8]  <- 'altura'
names(df_33_dia_junho_formatado)[9]  <- 'pop_chave'
names(df_33_dia_junho_formatado)[10]  <- 'data_rastreio_ccu'
names(df_33_dia_junho_formatado)[11]  <- 'prof_ctz'
names(df_33_dia_junho_formatado)[12]  <- 'data_marc_gravida'
names(df_33_dia_junho_formatado)[13]  <- 'data_marc_lactante'
names(df_33_dia_junho_formatado)[14]  <- 'hemogl'
names(df_33_dia_junho_formatado)[15]  <- 'carga_viral'
names(df_33_dia_junho_formatado)[16]  <- 'cd4'
names(df_33_dia_junho_formatado)[17]  <- 'carga_viral'
names(df_33_dia_junho_formatado)[18]  <- 'origem_cv'
names(df_33_dia_junho_formatado)[19]  <- 'data_cv'
names(df_33_dia_junho_formatado)[20]  <- 'cv_qualitativa'
names(df_33_dia_junho_formatado)[21]  <- 'tipo_dispensa'
names(df_33_dia_junho_formatado)[22]  <- 'linha_terap'
names(df_33_dia_junho_formatado)[23]  <- 'ult_regime'
names(df_33_dia_junho_formatado)[24]  <- 'data_regime'
names(df_33_dia_junho_formatado)[25]  <- 'factor_risco'
names(df_33_dia_junho_formatado)[26]  <- 'inscr_tarv'
names(df_33_dia_junho_formatado)[27]  <- 'nivel_escolar'
names(df_33_dia_junho_formatado)[28]  <- 'inscr_ptv_etv'
names(df_33_dia_junho_formatado)[29]  <- 'tratamento_tb'
names(df_33_dia_junho_formatado)[30]  <- 'estado'
names(df_33_dia_junho_formatado)[31]  <- 'em_gaac'
names(df_33_dia_junho_formatado)[32]  <- 'ult_menstruac'
names(df_33_dia_junho_formatado)[33]  <- 'data_ult_lev_fila'
names(df_33_dia_junho_formatado)[34]  <- 'data_prox_lev_fila'
names(df_33_dia_junho_formatado)[35]  <- 'data_prox_lev_recp_lev'
names(df_33_dia_junho_formatado)[36]  <- 'data_utl_consulta'
names(df_33_dia_junho_formatado)[37]  <- 'data_prox_consulta'
names(df_33_dia_junho_formatado)[38]  <- 'tipo_dispensa'
names(df_33_dia_junho_formatado)[39]  <- 'data_ult_apss'
names(df_33_dia_junho_formatado)[40]  <- 'data_prox_apss'
names(df_33_dia_junho_formatado)[41]  <- 'revel_disagnostico'
names(df_33_dia_junho_formatado)[42]  <- 'consentimento'
names(df_33_dia_junho_formatado)[43]  <- 'distrito'
names(df_33_dia_junho_formatado)[44]  <- 'localidade'
names(df_33_dia_junho_formatado)[45]  <- 'bairro'
names(df_33_dia_junho_formatado)[46]  <- 'telefone'
names(df_33_dia_junho_formatado)[47]  <- 'ponto_referencia'


# Acessando valores do df
nome_paciente =  df_33_dia_junho_formatado[ 3 ,2 ]

# Acessando valores de coluna do  df
todos_nids= df_33_dia_junho_formatado$nid

# imprimir os nomes das colunas do dataframe
names(df_33_dia_junho_formatado)

# subset data/ selecionar dados especificos
nomes_de_colunas = c("nid","nome", "sexo","data_nasc","idade")

# duas formas diferentees (1) especificado os paramentros- explicitamente (2) sem especificar os parametros - implicitamente
df_33_dias_mulheres =  select(.data = df_33_dia_junho_formatado, c("nid","nome", "sexo","data_nasc"))
df_33_dias_mulheres =  select(df_33_dia_junho_formatado, nomes_de_colunas )


# filtar dados  e selecionar colunas especificas: todos pacientes do sexo femenino com idade inferior a 15
df_apenas_mulheres_idade     = filter(df_33_dia_junho_formatado_v2, sexo=='F' &  idade < 15  )

# filtar dados e selecionar colunas especificas: todos pacientes do sexo femenino com idade entre 9-12
df_apenas_mulheres_criancas  = filter(df_33_dia_junho_formatado_v2, sexo=='F' &  idade %in%  c(9,10,11,12)  ) %>% 
                               select(nomes_de_colunas) 

# filtar dados e selecionar colunas especificas: todos pacientes do sexo femenino com idade entre 9-12 
df_apenas_mulheres_criancas  = filter(df_33_dia_junho_formatado_v2, sexo=='F' &  idade >=9   &  idade <=9   ) %>% 
  select(nomes_de_colunas) 


# gravar o resultado para excell

write_xlsx(x = "df_apenas_mulheres_criancas", path = 'analise_criancas_sexo_fem.xlsx', col_names = TRUE,           format_headers = TRUE)


