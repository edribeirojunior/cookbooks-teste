## ambiente TRN

# Worker list
worker.list=lbfaturamento-sus_trn, lbinternacao_trn, lbmvpep_trn, lbatendimento_trn, lbcontroladoria_trn, lbglobal_trn, lbdiagnostico_trn, lbfaturamento-convenio_trn, lbapoio_trn, lbsuprimentos_trn, lbmvautenticador-cas_trn, lbfinanceiro_trn, lbfaturamento-sus_sml, lbinternacao_sml, lbmvpep_sml, lbatendimento_sml, lbcontroladoria_sml, lbglobal_sml, lbdiagnostico_sml, lbfaturamento-convenio_sml, lbapoio_sml, lbsuprimentos_sml, lbmvautenticador-cas_sml, lbfinanceiro_sml

#Tomcat apoio_trn_022
worker.apoio_trn_022.port=9400
worker.apoio_trn_022.host=rdmverptrn01.rededor.corp
worker.apoio_trn_022.type=ajp13
worker.apoio_trn_022.lbfactor=1

#Tomcat atendimento_trn_022
worker.atendimento_trn_022.port=9400
worker.atendimento_trn_022.host=rdmverptrn01.rededor.corp
worker.atendimento_trn_022.type=ajp13
worker.atendimento_trn_022.lbfactor=1

#Tomcat controladoria_trn_022
worker.controladoria_trn_022.port=9400
worker.controladoria_trn_022.host=rdmverptrn01.rededor.corp
worker.controladoria_trn_022.type=ajp13
worker.controladoria_trn_022.lbfactor=1

#Tomcat diagnostico_trn_022
worker.diagnostico_trn_022.port=9400
worker.diagnostico_trn_022.host=rdmverptrn01.rededor.corp
worker.diagnostico_trn_022.type=ajp13
worker.diagnostico_trn_022.lbfactor=1

#Tomcat faturamento-convenio_trn_022
worker.faturamento-convenio_trn_022.port=9400
worker.faturamento-convenio_trn_022.host=rdmverptrn01.rededor.corp
worker.faturamento-convenio_trn_022.type=ajp13
worker.faturamento-convenio_trn_022.lbfactor=1

#Tomcat faturamento-sus_trn_022
worker.faturamento-sus_trn_022.port=9400
worker.faturamento-sus_trn_022.host=rdmverptrn01.rededor.corp
worker.faturamento-sus_trn_022.type=ajp13
worker.faturamento-sus_trn_022.lbfactor=1

#Tomcat financeiro_trn_022
worker.financeiro_trn_022.port=9400
worker.financeiro_trn_022.host=rdmverptrn01.rededor.corp
worker.financeiro_trn_022.type=ajp13
worker.financeiro_trn_022.lbfactor=1

#Tomcat global_trn_022
worker.global_trn_022.port=9400
worker.global_trn_022.host=rdmverptrn01.rededor.corp
worker.global_trn_022.type=ajp13
worker.global_trn_022.lbfactor=1

#Tomcat internacao_trn_022
worker.internacao_trn_022.port=9400
worker.internacao_trn_022.host=rdmverptrn01.rededor.corp
worker.internacao_trn_022.type=ajp13
worker.internacao_trn_022.lbfactor=1

#Tomcat mvautenticador-cas_trn_022
worker.mvautenticador-cas_trn_022.port=9502
worker.mvautenticador-cas_trn_022.host=rdmverptrn01.rededor.corp
worker.mvautenticador-cas_trn_022.type=ajp13
worker.mvautenticador-cas_trn_022.lbfactor=1

#Tomcat mvpep_trn_022
worker.mvpep_trn_022.port=9420
worker.mvpep_trn_022.host=rdmverptrn01.rededor.corp
worker.mvpep_trn_022.type=ajp13
worker.mvpep_trn_022.lbfactor=1

#Tomcat suprimentos_trn_022
worker.suprimentos_trn_022.port=9400
worker.suprimentos_trn_022.host=rdmverptrn01.rededor.corp
worker.suprimentos_trn_022.type=ajp13
worker.suprimentos_trn_022.lbfactor=1

## LoadBalancers

#--- lbfaturamento-sus ---#
worker.lbfaturamento-sus_trn.type=lb
worker.lbfaturamento-sus_trn.balance_workers=faturamento-sus_trn_022
worker.lbfaturamento-sus_trn.sticky_session=1
worker.lbfaturamento-sus_trn.sticky_session_force=1
worker.lbfaturamento-sus_trn.method=S

#--- lbinternacao ---#
worker.lbinternacao_trn.type=lb
worker.lbinternacao_trn.balance_workers=internacao_trn_022
worker.lbinternacao_trn.sticky_session=1
worker.lbinternacao_trn.sticky_session_force=1
worker.lbinternacao_trn.method=S
worker.lbinternacao_trn.socket_timeout=15

#--- lbmvpep ---#
worker.lbmvpep_trn.type=lb
worker.lbmvpep_trn.balance_workers=mvpep_trn_022
worker.lbmvpep_trn.sticky_session=1
worker.lbmvpep_trn.sticky_session_force=1
worker.lbmvpep_trn.method=S

#--- lbatendimento ---#
worker.lbatendimento_trn.type=lb
worker.lbatendimento_trn.balance_workers=atendimento_trn_022
worker.lbatendimento_trn.sticky_session=1
worker.lbatendimento_trn.sticky_session_force=1
worker.lbatendimento_trn.method=S

#--- lbcontroladoria ---#
worker.lbcontroladoria_trn.type=lb
worker.lbcontroladoria_trn.balance_workers=controladoria_trn_022
worker.lbcontroladoria_trn.sticky_session=1
worker.lbcontroladoria_trn.sticky_session_force=1
worker.lbcontroladoria_trn.method=S

#--- lbglobal ---#
worker.lbglobal_trn.type=lb
worker.lbglobal_trn.balance_workers=global_trn_022
worker.lbglobal_trn.sticky_session=1
worker.lbglobal_trn.sticky_session_force=1
worker.lbglobal_trn.method=S

#--- lbdiagnostico ---#
worker.lbdiagnostico_trn.type=lb
worker.lbdiagnostico_trn.balance_workers=diagnostico_trn_022
worker.lbdiagnostico_trn.sticky_session=1
worker.lbdiagnostico_trn.sticky_session_force=1
worker.lbdiagnostico_trn.method=S

#--- lbfaturamento-convenio ---#
worker.lbfaturamento-convenio_trn.type=lb
worker.lbfaturamento-convenio_trn.balance_workers=faturamento-convenio_trn_022
worker.lbfaturamento-convenio_trn.sticky_session=1
worker.lbfaturamento-convenio_trn.sticky_session_force=1
worker.lbfaturamento-convenio_trn.method=S

#--- lbapoio ---#
worker.lbapoio_trn.type=lb
worker.lbapoio_trn.balance_workers=apoio_trn_022
worker.lbapoio_trn.sticky_session=1
worker.lbapoio_trn.sticky_session_force=1
worker.lbapoio_trn.method=S

#--- lbsuprimentos ---#
worker.lbsuprimentos_trn.type=lb
worker.lbsuprimentos_trn.balance_workers=suprimentos_trn_022
worker.lbsuprimentos_trn.sticky_session=1
worker.lbsuprimentos_trn.sticky_session_force=1
worker.lbsuprimentos_trn.method=S

#--- lbmvautenticador-cas ---#
worker.lbmvautenticador-cas_trn.type=lb
worker.lbmvautenticador-cas_trn.balance_workers=mvautenticador-cas_trn_022
worker.lbmvautenticador-cas_trn.sticky_session=1
worker.lbmvautenticador-cas_trn.sticky_session_force=1
worker.lbmvautenticador-cas_trn.method=S

#--- lbfinanceiro ---#
worker.lbfinanceiro_trn.type=lb
worker.lbfinanceiro_trn.balance_workers=financeiro_trn_022
worker.lbfinanceiro_trn.sticky_session=1
worker.lbfinanceiro_trn.sticky_session_force=1
worker.lbfinanceiro_trn.method=S

## Ambiente SML

# Worker list
worker.list=lbfaturamento-sus, lbinternacao, lbmvpep, lbatendimento, lbcontroladoria, lbglobal, lbdiagnostico, lbfaturamento-convenio, lbapoio, lbsuprimentos, lbmvautenticador-cas, lbfinanceiro

#Tomcat apoio_sml_022
worker.apoio_sml_022.port=9300
worker.apoio_sml_022.host=rdmverptrn01.rededor.corp
worker.apoio_sml_022.type=ajp13
worker.apoio_sml_022.lbfactor=1

#Tomcat atendimento_sml_022
worker.atendimento_sml_022.port=9300
worker.atendimento_sml_022.host=rdmverptrn01.rededor.corp
worker.atendimento_sml_022.type=ajp13
worker.atendimento_sml_022.lbfactor=1

#Tomcat controladoria_sml_022
worker.controladoria_sml_022.port=9300
worker.controladoria_sml_022.host=rdmverptrn01.rededor.corp
worker.controladoria_sml_022.type=ajp13
worker.controladoria_sml_022.lbfactor=1

#Tomcat diagnostico_sml_022
worker.diagnostico_sml_022.port=9300
worker.diagnostico_sml_022.host=rdmverptrn01.rededor.corp
worker.diagnostico_sml_022.type=ajp13
worker.diagnostico_sml_022.lbfactor=1

#Tomcat faturamento-convenio_sml_022
worker.faturamento-convenio_sml_022.port=9300
worker.faturamento-convenio_sml_022.host=rdmverptrn01.rededor.corp
worker.faturamento-convenio_sml_022.type=ajp13
worker.faturamento-convenio_sml_022.lbfactor=1

#Tomcat faturamento-sus_sml_022
worker.faturamento-sus_sml_022.port=9300
worker.faturamento-sus_sml_022.host=rdmverptrn01.rededor.corp
worker.faturamento-sus_sml_022.type=ajp13
worker.faturamento-sus_sml_022.lbfactor=1

#Tomcat financeiro_sml_022
worker.financeiro_sml_022.port=9300
worker.financeiro_sml_022.host=rdmverptrn01.rededor.corp
worker.financeiro_sml_022.type=ajp13
worker.financeiro_sml_022.lbfactor=1

#Tomcat global_sml_022
worker.global_sml_022.port=9300
worker.global_sml_022.host=rdmverptrn01.rededor.corp
worker.global_sml_022.type=ajp13
worker.global_sml_022.lbfactor=1

#Tomcat internacao_sml_022
worker.internacao_sml_022.port=9300
worker.internacao_sml_022.host=rdmverptrn01.rededor.corp
worker.internacao_sml_022.type=ajp13
worker.internacao_sml_022.lbfactor=1

#Tomcat mvautenticador-cas_sml_022
worker.mvautenticador-cas_sml_022.port=9501
worker.mvautenticador-cas_sml_022.host=rdmverptrn01.rededor.corp
worker.mvautenticador-cas_sml_022.type=ajp13
worker.mvautenticador-cas_sml_022.lbfactor=1

#Tomcat mvpep_sml_022
worker.mvpep_sml_022.port=9320
worker.mvpep_sml_022.host=rdmverptrn01.rededor.corp
worker.mvpep_sml_022.type=ajp13
worker.mvpep_sml_022.lbfactor=1

#Tomcat suprimentos_sml_022
worker.suprimentos_sml_022.port=9300
worker.suprimentos_sml_022.host=rdmverptrn01.rededor.corp
worker.suprimentos_sml_022.type=ajp13
worker.suprimentos_sml_022.lbfactor=1

#--- lbfaturamento-sus ---#
worker.lbfaturamento-sus.type=lb
worker.lbfaturamento-sus.balance_workers=faturamento-sus_sml_022
worker.lbfaturamento-sus.sticky_session=1
worker.lbfaturamento-sus.sticky_session_force=1
worker.lbfaturamento-sus.method=S

#--- lbinternacao ---#
worker.lbinternacao.type=lb
worker.lbinternacao.balance_workers=internacao_sml_022
worker.lbinternacao.sticky_session=1
worker.lbinternacao.sticky_session_force=1
worker.lbinternacao.method=S
worker.lbinternacao.socket_timeout=15

#--- lbmvpep ---#
worker.lbmvpep.type=lb
worker.lbmvpep.balance_workers=mvpep_sml_022
worker.lbmvpep.sticky_session=1
worker.lbmvpep.sticky_session_force=1
worker.lbmvpep.method=S

#--- lbatendimento ---#
worker.lbatendimento.type=lb
worker.lbatendimento.balance_workers=atendimento_sml_022
worker.lbatendimento.sticky_session=1
worker.lbatendimento.sticky_session_force=1
worker.lbatendimento.method=S

#--- lbcontroladoria ---#
worker.lbcontroladoria.type=lb
worker.lbcontroladoria.balance_workers=controladoria_sml_022
worker.lbcontroladoria.sticky_session=1
worker.lbcontroladoria.sticky_session_force=1
worker.lbcontroladoria.method=S

#--- lbglobal ---#
worker.lbglobal.type=lb
worker.lbglobal.balance_workers=global_sml_022
worker.lbglobal.sticky_session=1
worker.lbglobal.sticky_session_force=1
worker.lbglobal.method=S

#--- lbdiagnostico ---#
worker.lbdiagnostico.type=lb
worker.lbdiagnostico.balance_workers=diagnostico_sml_022
worker.lbdiagnostico.sticky_session=1
worker.lbdiagnostico.sticky_session_force=1
worker.lbdiagnostico.method=S

#--- lbfaturamento-convenio ---#
worker.lbfaturamento-convenio.type=lb
worker.lbfaturamento-convenio.balance_workers=faturamento-convenio_sml_022
worker.lbfaturamento-convenio.sticky_session=1
worker.lbfaturamento-convenio.sticky_session_force=1
worker.lbfaturamento-convenio.method=S

#--- lbapoio ---#
worker.lbapoio.type=lb
worker.lbapoio.balance_workers=apoio_sml_022
worker.lbapoio.sticky_session=1
worker.lbapoio.sticky_session_force=1
worker.lbapoio.method=S

#--- lbsuprimentos ---#
worker.lbsuprimentos.type=lb
worker.lbsuprimentos.balance_workers=suprimentos_sml_022
worker.lbsuprimentos.sticky_session=1
worker.lbsuprimentos.sticky_session_force=1
worker.lbsuprimentos.method=S

#--- lbmvautenticador-cas ---#
worker.lbmvautenticador-cas.type=lb
worker.lbmvautenticador-cas.balance_workers=mvautenticador-cas_sml_022
worker.lbmvautenticador-cas.sticky_session=1
worker.lbmvautenticador-cas.sticky_session_force=1
worker.lbmvautenticador-cas.method=S

#--- lbfinanceiro ---#
worker.lbfinanceiro.type=lb
worker.lbfinanceiro.balance_workers=financeiro_sml_022
worker.lbfinanceiro.sticky_session=1
worker.lbfinanceiro.sticky_session_force=1
worker.lbfinanceiro.method=S

#--- status ---#
worker.list=jk-manage
worker.jk-manage.type=status
worker.jk-manage.mount=/manager
worker.jk-status.read_only=true
