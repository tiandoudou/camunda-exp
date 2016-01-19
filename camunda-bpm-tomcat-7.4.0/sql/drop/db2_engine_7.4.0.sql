drop table ACT_RE_DECISION_DEF;
drop index ACT_IDX_CASE_EXEC_BUSKEY;

alter table ACT_RU_CASE_EXECUTION
    drop foreign key ACT_FK_CASE_EXE_CASE_INST;

alter table ACT_RU_CASE_EXECUTION
    drop foreign key ACT_FK_CASE_EXE_PARENT;

alter table ACT_RU_CASE_EXECUTION
    drop foreign key ACT_FK_CASE_EXE_CASE_DEF;

alter table ACT_RU_VARIABLE
    drop foreign key ACT_FK_VAR_CASE_EXE;

alter table ACT_RU_VARIABLE
    drop foreign key ACT_FK_VAR_CASE_INST;

alter table ACT_RU_TASK
    drop foreign key ACT_FK_TASK_CASE_EXE;

alter table ACT_RU_TASK
    drop foreign key ACT_FK_TASK_CASE_DEF;

alter table ACT_RU_CASE_SENTRY_PART
    drop foreign key ACT_FK_CASE_SENTRY_CASE_INST;

alter table ACT_RU_CASE_SENTRY_PART
    drop foreign key ACT_FK_CASE_SENTRY_CASE_EXEC;

-- indexes for concurrency problems - https://app.camunda.com/jira/browse/CAM-1646 --
drop index ACT_IDX_CASE_EXEC_CASE;
drop index ACT_IDX_CASE_EXEC_PARENT;
drop index ACT_IDX_VARIABLE_CASE_EXEC;
drop index ACT_IDX_VARIABLE_CASE_INST;
drop index ACT_IDX_TASK_CASE_EXEC;
drop index ACT_IDX_TASK_CASE_DEF_ID;
drop index ACT_IDX_CASE_SENTRY_CASE_INST;
drop index ACT_IDX_CASE_SENTRY_CASE_EXEC;

drop table ACT_RE_CASE_DEF;
drop table ACT_RU_CASE_EXECUTION;
drop table ACT_RU_CASE_SENTRY_PART;
drop index ACT_IDX_EXEC_BUSKEY;
drop index ACT_IDX_TASK_CREATE;
drop index ACT_IDX_TASK_ASSIGNEE;
drop index ACT_IDX_IDENT_LNK_USER;
drop index ACT_IDX_IDENT_LNK_GROUP;
drop index ACT_IDX_VARIABLE_TASK_ID;
drop index ACT_IDX_INC_CONFIGURATION;
drop index ACT_IDX_JOB_PROCINST;
drop index ACT_UNIQ_AUTH_USER;
drop index ACT_UNIQ_AUTH_GROUP;
drop index ACT_UNIQ_VARIABLE;

alter table ACT_GE_BYTEARRAY
    drop foreign key ACT_FK_BYTEARR_DEPL;

alter table ACT_RU_EXECUTION
    drop foreign key ACT_FK_EXE_PROCINST;

alter table ACT_RU_EXECUTION
    drop foreign key ACT_FK_EXE_PARENT;

alter table ACT_RU_EXECUTION
    drop foreign key ACT_FK_EXE_SUPER;

alter table ACT_RU_EXECUTION 
    drop foreign key ACT_FK_EXE_PROCDEF;

alter table ACT_RU_IDENTITYLINK
    drop foreign key ACT_FK_TSKASS_TASK;

alter table ACT_RU_IDENTITYLINK
    drop foreign key ACT_FK_ATHRZ_PROCEDEF;

alter table ACT_RU_TASK
	drop foreign key ACT_FK_TASK_EXE;

alter table ACT_RU_TASK
	drop foreign key ACT_FK_TASK_PROCINST;

alter table ACT_RU_TASK
	drop foreign key ACT_FK_TASK_PROCDEF;

alter table ACT_RU_VARIABLE
    drop foreign key ACT_FK_VAR_EXE;

alter table ACT_RU_VARIABLE
	drop foreign key ACT_FK_VAR_PROCINST;

alter table ACT_RU_VARIABLE
    drop foreign key ACT_FK_VAR_BYTEARRAY;

alter table ACT_RU_JOB
    drop foreign key ACT_FK_JOB_EXCEPTION;

alter table ACT_RU_EVENT_SUBSCR
    drop foreign key ACT_FK_EVENT_EXEC;

alter table ACT_RU_INCIDENT
    drop foreign key ACT_FK_INC_EXE;

alter table ACT_RU_INCIDENT
    drop foreign key ACT_FK_INC_PROCINST;

alter table ACT_RU_INCIDENT
    drop foreign key ACT_FK_INC_PROCDEF;

alter table ACT_RU_INCIDENT
    drop foreign key ACT_FK_INC_CAUSE;

alter table ACT_RU_INCIDENT
    drop foreign key ACT_FK_INC_RCAUSE;
    
alter table ACT_RU_EXT_TASK
    drop foreign key ACT_FK_EXT_TASK_EXE;

drop index ACT_IDX_EVENT_SUBSCR_CONFIG_;
drop index ACT_IDX_ATHRZ_PROCEDEF;

-- indexes for concurrency problems - https://app.camunda.com/jira/browse/CAM-1646 --
drop index ACT_IDX_EXECUTION_PROC;
drop index ACT_IDX_EXECUTION_PARENT;
drop index ACT_IDX_EXECUTION_SUPER;
drop index ACT_IDX_EXECUTION_PROCINST;
drop index ACT_IDX_EVENT_SUBSCR_EXEC;
drop index ACT_IDX_BA_DEPLOYMENT;
drop index ACT_IDX_IDENT_LNK_TASK;
drop index ACT_IDX_INCIDENT_EXEC;
drop index ACT_IDX_INCIDENT_PROCINST;
drop index ACT_IDX_INCIDENT_PROC_DEF_ID;
drop index ACT_IDX_INCIDENT_CAUSE;
drop index ACT_IDX_INCIDENT_ROOT_CAUSE;
drop index ACT_IDX_JOB_EXCEPTION_STACK;
drop index ACT_IDX_VARIABLE_BA;
drop index ACT_IDX_VARIABLE_EXEC;
drop index ACT_IDX_VARIABLE_PROCINST;
drop index ACT_IDX_TASK_EXEC;
drop index ACT_IDX_TASK_PROCINST;
drop index ACT_IDX_TASK_PROC_DEF_ID;
drop index ACT_IDX_METER_LOG;
drop index ACT_IDX_AUTH_RESOURCE_ID;
drop index ACT_IDX_EXT_TASK_TOPIC;

drop index ACT_IDX_BYTEARRAY_NAME;
drop index ACT_IDX_DEPLOYMENT_NAME;
drop index ACT_IDX_JOBDEF_PROC_DEF_ID;
drop index ACT_IDX_JOB_HANDLER_TYPE;
drop index ACT_IDX_EVENT_SUBSCR_EVT_NAME;
drop index ACT_IDX_PROCDEF_DEPLOYMENT_ID;

drop table ACT_GE_PROPERTY;
drop table ACT_GE_BYTEARRAY;
drop table ACT_RE_DEPLOYMENT;
drop table ACT_RE_PROCDEF;
drop table ACT_RU_VARIABLE;
drop table ACT_RU_IDENTITYLINK;
drop table ACT_RU_TASK;
drop table ACT_RU_EXECUTION;
drop table ACT_RU_JOB;
drop table ACT_RU_JOBDEF;
drop table ACT_RU_EVENT_SUBSCR;
drop table ACT_RU_INCIDENT;
drop table ACT_RU_AUTHORIZATION;
drop table ACT_RU_FILTER;
drop table ACT_RU_METER_LOG;
drop table ACT_RU_EXT_TASK;

drop index ACT_IDX_HI_DEC_INST_ID;
drop index ACT_IDX_HI_DEC_INST_KEY;
drop index ACT_IDX_HI_DEC_INST_PI;
drop index ACT_IDX_HI_DEC_INST_CI;
drop index ACT_IDX_HI_DEC_INST_ACT;
drop index ACT_IDX_HI_DEC_INST_ACT_INST;
drop index ACT_IDX_HI_DEC_INST_TIME;

drop index ACT_IDX_HI_DEC_IN_INST;
drop index ACT_IDX_HI_DEC_IN_CLAUSE;

drop index ACT_IDX_HI_DEC_OUT_INST;
drop index ACT_IDX_HI_DEC_OUT_RULE;

drop table ACT_HI_DECINST;

drop table ACT_HI_DEC_IN;

drop table ACT_HI_DEC_OUT;
drop index ACT_IDX_HI_CAS_I_CLOSE;
drop index ACT_IDX_HI_CAS_I_BUSKEY;
drop index ACT_IDX_HI_CAS_A_I_CREATE;
drop index ACT_IDX_HI_CAS_A_I_END;
drop index ACT_IDX_HI_CAS_A_I_COMP;

drop table ACT_HI_CASEINST;
drop table ACT_HI_CASEACTINST;
drop index ACT_IDX_HI_PRO_INST_END;
drop index ACT_IDX_HI_PRO_I_BUSKEY;
drop index ACT_IDX_HI_ACT_INST_START;
drop index ACT_IDX_HI_ACT_INST_END;
drop index ACT_IDX_HI_ACT_INST_COMP;
drop index ACT_IDX_HI_DETAIL_PROC_INST;
drop index ACT_IDX_HI_DETAIL_ACT_INST;
drop index ACT_IDX_HI_DETAIL_TIME;
drop index ACT_IDX_HI_DETAIL_NAME;
drop index ACT_IDX_HI_DETAIL_TASK_ID;
drop index ACT_IDX_HI_PROCVAR_PROC_INST;
drop index ACT_IDX_HI_PROCVAR_NAME_TYPE;
drop index ACT_IDX_HI_ACT_INST_PROCINST;
drop index ACT_IDX_HI_JOB_LOG_PROCINST;
drop index ACT_IDX_HI_JOB_LOG_PROCDEF;

drop table ACT_HI_PROCINST;
drop table ACT_HI_ACTINST;
drop table ACT_HI_VARINST;
drop table ACT_HI_TASKINST;
drop table ACT_HI_DETAIL;
drop table ACT_HI_COMMENT;
drop table ACT_HI_ATTACHMENT;
drop table ACT_HI_OP_LOG;
drop table ACT_HI_INCIDENT;
drop table ACT_HI_JOB_LOG;
