# carregar as dependencias
library('readxl')

#Indicar directorio principal de trablaho
setwd('/home/agnaldo/Git/r-trainning')


# Carregar os ficheiros
df_junho <- read_excel(path = 'CCS_ACTUALMENTE_EM_TARV_33_DIAS_2022-07-18_CS_JUNHO.xls',sheet = 1,skip = 5,col_names = FALSE) 

names(df_junho)[1]  <- 'nid'
names(df_junho)[2]  <- 'nome'
names(df_junho)[3]  <- 'inicio_tarv'
names(df_junho)[4]  <- 'data_nasc'
names(df_junho)[5]  <- 'idade'
names(df_junho)[6]  <- 'sexo'
names(df_junho)[7]  <- 'peso'
names(df_junho)[8]  <- 'altura'
names(df_junho)[9]  <- 'pop_chave'
names(df_junho)[10]  <- 'data_rastreio_ccu'
names(df_junho)[11]  <- 'prof_ctz'
names(df_junho)[12]  <- 'data_marc_gravida'
names(df_junho)[13]  <- 'data_marc_lactante'
names(df_junho)[14]  <- 'hemogl'
names(df_junho)[15]  <- 'data_nasc'
names(df_junho)[16]  <- 'cd4'
names(df_junho)[17]  <- 'carga_viral'
names(df_junho)[18]  <- 'origem_cv'
names(df_junho)[19]  <- 'data_cv'
names(df_junho)[20]  <- 'cv_qualitativa'
names(df_junho)[21]  <- 'tipo_dispensa'
names(df_junho)[22]  <- 'linha_terap'
names(df_junho)[23]  <- 'ult_regime'
names(df_junho)[24]  <- 'data_regime'
names(df_junho)[25]  <- 'factor_risco'
names(df_junho)[26]  <- 'inscr_tarv'
names(df_junho)[27]  <- 'nivel_escolar'
names(df_junho)[28]  <- 'inscr_ptv_etv'
names(df_junho)[29]  <- 'tratamento_tb'
names(df_junho)[30]  <- 'estado'
names(df_junho)[31]  <- 'em_gaac'
names(df_junho)[32]  <- 'ult_menstruac'
names(df_junho)[33]  <- 'data_ult_lev_fila'
names(df_junho)[34]  <- 'data_prox_lev_fila'
names(df_junho)[35]  <- 'data_prox_lev_recp_lev'
names(df_junho)[36]  <- 'data_utl_consulta'
names(df_junho)[37]  <- 'data_prox_consulta'
names(df_junho)[38]  <- 'tipo_dispensa'
names(df_junho)[39]  <- 'data_ult_apss'
names(df_junho)[40]  <- 'data_prox_apss'
names(df_junho)[41]  <- 'revel_disagnostico'
names(df_junho)[42]  <- 'consentimento'
names(df_junho)[43]  <- 'distrito'
names(df_junho)[44]  <- 'localidade'
names(df_junho)[45]  <- 'bairro'
names(df_junho)[46]  <- 'telefone'
names(df_junho)[47]  <- 'ponto_referencia'


