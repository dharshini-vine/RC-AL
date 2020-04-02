CREATE TABLE COMPANIES(ID BIGINT NOT NULL,COMPANY_NAME VARCHAR(255),PRIMARY KEY(ID))

CREATE TABLE CAMPAIGN(ID BIGINT NOT NULL,CAMPAIGN_NAME VARCHAR(255),BODY VARCHAR(255),DELIVERY SMALLINT,CREATED_ON TIMESTAMP,PRIMARY KEY(ID))


CREATE TABLE DATE_DIMENSION(ID BIGINT NOT NULL,DATE INT,DAY VARCHAR(10),MONTH INT,YEAR BIGINT,PRIMARY KEY (ID))

CREATE TABLE RESPONSE (ID BIGINT NOT NULL,COMPANY_ID BIGINT references COMPANIES(ID),
					   CAMPAIGN_ID BIGINT,
					   CAMPAIGN_BODY VARCHAR(255),
             CREATED_ON TIMESTAMP,
					   FIRST_NAME VARCHAR(255),
             LAST_NAME VARCHAR(255),
					   CAMPAIGN_RECIPIENT_ID BIGINT,
					   FINAL_RESPONSE_ID BIGINT,
					   RESPONSE_BODY VARCHAR(255),
             RESPONSE_CREATED_ON TIMESTAMP,
             SENTIMENT SMALLINT,
             SENTIMENT_SCORE JSONB)