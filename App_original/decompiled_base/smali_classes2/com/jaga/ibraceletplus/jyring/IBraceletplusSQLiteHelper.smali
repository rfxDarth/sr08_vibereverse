.class public Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IBraceletplusSQLiteHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "database"

.field private static appContext:Landroid/content/Context;

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field private static iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;
    .locals 1

    .line 59
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 49
    sput-object p0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->appContext:Landroid/content/Context;

    .line 50
    const-string v0, "init db"

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "jring.db"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    .line 53
    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    const-string p0, "init getWritableDatabase"

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onUpgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db onUpgradeTo to version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    return-void

    .line 213
    :pswitch_0
    const-string p2, "ALTER TABLE run_record ADD COLUMN hasstep INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 206
    :pswitch_1
    const-string p2, "ALTER TABLE run_record ADD COLUMN hasheart INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    const-string p2, "ALTER TABLE run_record ADD COLUMN heartrateavg INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    const-string p2, "ALTER TABLE run_record ADD COLUMN heartratemax INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string p2, "ALTER TABLE run_history ADD COLUMN heartrate INTEGER"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 202
    :pswitch_2
    const-string p2, "UPDATE smsrsp_info set content = \'Can I call you later?\' where smsrspid = 2"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 191
    :pswitch_3
    const-string p2, "create table if not exists smsrsp_info(id integer primary key AUTOINCREMENT,smsrspid integer,content varchar,createtime INTEGER)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string p2, "INSERT INTO\t smsrsp_info(smsrspid, content, createtime) VALUES(1, \'Let me get back to you.\', 0)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string p2, "INSERT INTO\t smsrsp_info(smsrspid, content, createtime) VALUES(2, \'Can I call you later?\', 0)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string p2, "INSERT INTO\t smsrsp_info(smsrspid, content, createtime) VALUES(3, \'Sorry,can not talk right now.\', 0)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string p2, "INSERT INTO\t smsrsp_info(smsrspid, content, createtime) VALUES(4, \'In a meeting right now.\', 0)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string p2, "INSERT INTO\t smsrsp_info(smsrspid, content, createtime) VALUES(5, \'No\uff0cProblem.\', 0)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 186
    :pswitch_4
    const-string p2, "create table if not exists ecards_info(id integer primary key AUTOINCREMENT,ecardid integer,name varchar,content varchar,createtime INTEGER)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 178
    :pswitch_5
    const-string p2, "ALTER TABLE device_info ADD COLUMN ver varchar"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string p2, "ALTER TABLE device_info ADD COLUMN cid varchar"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string p2, "ALTER TABLE device_info ADD COLUMN did varchar"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string p2, "ALTER TABLE device_info ADD COLUMN bindflag varchar"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string p2, "ALTER TABLE device_info ADD COLUMN bindstate varchar"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 172
    :pswitch_6
    const-string p2, "ALTER TABLE sport_history ADD COLUMN syncGoogleFit integer DEFAULT 0"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string p2, "ALTER TABLE sport_history ADD COLUMN syncGoogleFitId varchar"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string p2, "UPDATE sport_history SET syncGoogleFit = 1"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 167
    :pswitch_7
    const-string p2, "create table if not exists contact_info(id integer primary key AUTOINCREMENT,contactid integer,name varchar,phone varchar,createtime INTEGER)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 138
    :pswitch_8
    const-string p2, "CREATE TABLE IF NOT EXISTS ecg_record2 (id integer primary key AUTOINCREMENT,memberid varchar,macid varchar,timestamp integer,dbp integer,adddate DATETIME DEFAULT CURRENT_TIMESTAMP,ecgdatacount integer,ecgid varchar,healthScore integer,heartRate integer,ecgScore varchar,hrvScore varchar,heartavg integer,heartmax integer,heartmin integer,p_beatStop varchar,p_fastBeat varchar,p_pvc varchar,p_slowBeat varchar,p_vesc varchar,sbp integer,sessionid varchar,suggest varchar,t_arrhythmia integer,t_beatStop integer,t_fastBeat integer,t_pvc integer,t_slowBeat integer,t_vesc integer,type integer)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string p2, "CREATE UNIQUE INDEX record2 ON ecg_record2 (memberid, macid, timestamp)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    const-string p2, "create table if not exists ecg_history2 (id integer primary key AUTOINCREMENT,dataind integer,ecgid varchar,heart integer,issync integer,originSample integer,procSample integer,baseFilterData REAL,sessionid varchar)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string p2, "CREATE INDEX history2 ON ecg_history2 (sessionid, ecgid)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string p2, "create table if not exists ecg_session2 (id integer primary key AUTOINCREMENT,memberid varchar,macid varchar,count integer,starttime DATETIME DEFAULT CURRENT_TIMESTAMP,endtime DATETIME DEFAULT CURRENT_TIMESTAMP,fasttimes integer,issync integer,pvctimes integer,sessionid varchar,slowtimes integer,stoptimes integer,type integer,vesstimes integer)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string p2, "CREATE UNIQUE INDEX session2 ON ecg_session2 (memberid, macid, sessionid)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 121
    :pswitch_9
    const-string p2, "CREATE TABLE IF NOT EXISTS ecg_record (id integer primary key AUTOINCREMENT,mid varchar,macid varchar,timestamp integer,timezone varchar,healthScore integer,heartRate integer,ecgScore varchar,hrvScore varchar,type integer,ecgPosition1 varchar,ecgPosition2 varchar,ecgPosition3 varchar,ecgPosition4 varchar,ecgPosition5 varchar,suggest varchar)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string p2, "CREATE UNIQUE INDEX record ON ecg_record (mid, macid, timestamp)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string p2, "create table if not exists ecg_history (id integer primary key AUTOINCREMENT,mid varchar,macid varchar,timestamp integer,timezone varchar,ecg text,heart text,blood_high text,blood_low text,timestamp_record integer)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    const-string p2, "CREATE UNIQUE INDEX history ON ecg_history (mid, macid, timestamp)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 113
    :pswitch_a
    const-string p2, "create table if not exists health_history(id integer primary key AUTOINCREMENT,uid varchar,macid varchar,isupload integer,type integer,value float,shrinkvalue float,adddate DATETIME DEFAULT CURRENT_TIMESTAMP,timestamp INTEGER)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string p2, "DROP INDEX IF EXISTS mmt"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string p2, "CREATE UNIQUE INDEX mmtt ON sport_history (uid, macid, timestamp, type)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 80
    :pswitch_b
    const-string p2, "create table if not exists running_data(id integer primary key AUTOINCREMENT,key varchar,value varchar)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string p2, "create table if not exists device_info(id integer primary key,nickname varchar,name varchar,address varchar,adddate DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string p2, "create table if not exists sport_history(id integer primary key AUTOINCREMENT,mid varchar,macid varchar,step integer,distance integer,calorie integer,type integer,uid varchar,heartrate integer,timezone varchar,timestamp integer,sync integer,adddate DATETIME DEFAULT CURRENT_TIMESTAMP)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string p2, "CREATE UNIQUE INDEX mmt ON sport_history (mid, macid, timestamp)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string p2, "create table if not exists alarm_info(alarm_id integer,macid varchar,createtime DATETIME,type integer,subtype integer,name varchar,username varchar,weekly integer,fireday DATETIME,snooze integer,snooze_repeat integer,year integer,month integer,day integer,hour integer,minute integer,startyear integer,startmonth integer,startday integer,starthour integer,startminute integer,endyear integer,endmonth integer,endday integer,endhour integer,endminute integer,repeat_hour integer,repeat_schedule integer,repeat_times integer,enable integer)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string p2, "create table if not exists run_record (id INTEGER primary key AUTOINCREMENT,runid TEXT,macid TEXT,pace INTEGER,totalcalories REAL,totaldistance REAL,totalstep INTEGER,totaltime INTEGER,timezone TEXT,uid TEXT,mid TEXT,type INTEGER,finish INTEGER,addtimestamp INTEGER)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string p2, "CREATE TABLE IF NOT EXISTS run_history (id INTEGER primary key AUTOINCREMENT,runid TEXT,addtimestamp INTEGER,latitude REAL,longitude REAL,radius REAL,altitude REAL,direction REAL,satellite INTEGER,speed REAL,locType INTEGER)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveLog(Ljava/lang/String;)V
    .locals 5

    .line 1540
    const-string v0, "database"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->appContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-ui.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/JRing/log/"

    invoke-static {v0, p0, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setEcgRecord11(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;Landroid/database/Cursor;)V
    .locals 2

    .line 324
    const-string v0, "macid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->macid:Ljava/lang/String;

    .line 325
    const-string v0, "mid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->mid:Ljava/lang/String;

    .line 326
    const-string/jumbo v0, "timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->timestamp:J

    .line 327
    const-string/jumbo v0, "timezone"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->timezone:Ljava/lang/String;

    .line 328
    const-string v0, "healthScore"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->healthScore:I

    .line 329
    const-string v0, "heartRate"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->heartRate:I

    .line 330
    const-string v0, "ecgScore"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgScore:Ljava/lang/String;

    .line 331
    const-string v0, "hrvScore"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->hrvScore:Ljava/lang/String;

    .line 332
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->type:I

    .line 333
    const-string v0, "ecgPosition1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition1:Ljava/lang/String;

    .line 334
    const-string v0, "ecgPosition2"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition2:Ljava/lang/String;

    .line 335
    const-string v0, "ecgPosition3"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition3:Ljava/lang/String;

    .line 336
    const-string v0, "ecgPosition4"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition4:Ljava/lang/String;

    .line 337
    const-string v0, "ecgPosition5"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition5:Ljava/lang/String;

    .line 338
    const-string/jumbo v0, "suggest"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->suggest:Ljava/lang/String;

    return-void
.end method

.method private setEcgRecord2(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;Landroid/database/Cursor;)V
    .locals 2

    .line 411
    const-string v0, "macid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->macid:Ljava/lang/String;

    .line 412
    const-string v0, "memberid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->memberid:Ljava/lang/String;

    .line 413
    const-string/jumbo v0, "timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->timestamp:J

    .line 414
    const-string v0, "dbp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->dbp:I

    .line 415
    const-string/jumbo v0, "sbp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->sbp:I

    .line 416
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->type:I

    .line 418
    const-string v0, "adddate"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->adddate:J

    .line 419
    const-string v0, "ecgdatacount"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgdatacount:I

    .line 420
    const-string v0, "ecgid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgid:Ljava/lang/String;

    .line 422
    const-string v0, "healthScore"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    .line 423
    const-string v0, "heartRate"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    .line 424
    const-string v0, "ecgScore"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgScore:Ljava/lang/String;

    .line 425
    const-string v0, "hrvScore"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->hrvScore:Ljava/lang/String;

    .line 427
    const-string v0, "heartavg"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartavg:I

    .line 428
    const-string v0, "heartmax"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartmax:I

    .line 429
    const-string v0, "heartmin"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartmin:I

    .line 431
    const-string/jumbo v0, "sessionid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->sessionid:Ljava/lang/String;

    .line 432
    const-string/jumbo v0, "t_arrhythmia"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_arrhythmia:I

    .line 434
    const-string v0, "p_beatStop"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_beatStop:Ljava/lang/String;

    .line 435
    const-string v0, "p_fastBeat"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_fastBeat:Ljava/lang/String;

    .line 436
    const-string v0, "p_pvc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_pvc:Ljava/lang/String;

    .line 437
    const-string v0, "p_slowBeat"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_slowBeat:Ljava/lang/String;

    .line 438
    const-string v0, "p_vesc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_vesc:Ljava/lang/String;

    .line 440
    const-string/jumbo v0, "t_beatStop"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_beatStop:I

    .line 441
    const-string/jumbo v0, "t_fastBeat"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_fastBeat:I

    .line 442
    const-string/jumbo v0, "t_pvc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_pvc:I

    .line 443
    const-string/jumbo v0, "t_slowBeat"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_slowBeat:I

    .line 444
    const-string/jumbo v0, "t_vesc"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_vesc:I

    .line 446
    const-string/jumbo v0, "suggest"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->suggest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addRunningData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1193
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1197
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM running_data WHERE key == ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1199
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    const-string/jumbo v3, "running_data"

    if-eqz v2, :cond_0

    .line 1207
    :try_start_2
    sget-object p2, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "key == ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    .line 1210
    :cond_0
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 1219
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1220
    :cond_3
    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1250
    :try_start_0
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1251
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public delRunningData(Ljava/lang/String;)V
    .locals 3

    .line 1244
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "key == ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "running_data"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteContactInfoData()J
    .locals 4

    .line 1424
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "1==1"

    const/4 v2, 0x0

    const-string v3, "contact_info"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public deleteContactItem(I)V
    .locals 3

    .line 1420
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "contact_info"

    const-string v2, "contactid == ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteDeviceInfoData()J
    .locals 4

    .line 1145
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_BLOOD"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1146
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_HEART"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1147
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_BLOOD_ADJUST"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1148
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_BLOOD_ONLY"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1149
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->iBraceletplusHelper:Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    const-string v1, "FUNCTION_BLOOD_OXYGEN"

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1150
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "1==1"

    const/4 v2, 0x0

    const-string v3, "device_info"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public deleteECardInfoData()J
    .locals 4

    .line 1482
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "1==1"

    const/4 v2, 0x0

    const-string v3, "ecards_info"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public deleteECardItem(I)V
    .locals 3

    .line 1478
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "ecards_info"

    const-string v2, "ecardid == ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteHealthHistory(Ljava/lang/String;)V
    .locals 3

    .line 1042
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "macid == ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "health_history"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteRunHistory(Ljava/lang/String;)V
    .locals 3

    .line 1125
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "runid == ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "run_history"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteRunRecord(Ljava/lang/String;)V
    .locals 3

    .line 1121
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "runid == ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "run_record"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteSmsRspInfoData()J
    .locals 4

    .line 1535
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "1==1"

    const/4 v2, 0x0

    const-string/jumbo v3, "smsrsp_info"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public deleteSmsRspItem(I)V
    .locals 3

    .line 1531
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "smsrsp_info"

    const-string/jumbo v2, "smsrspid == ?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteSportHistory(Ljava/lang/String;)V
    .locals 3

    .line 1038
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "macid == ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "sport_history"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getBleDeviceInfo()Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;
    .locals 11

    .line 1156
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;-><init>()V

    const/4 v1, 0x0

    .line 1158
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "device_info"

    const-string v4, "*"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "1==1"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "adddate desc"

    const-string v10, "1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1160
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1161
    const-string v3, "address"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1162
    const-string v4, "nickname"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1163
    const-string/jumbo v5, "ver"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1164
    const-string v6, "cid"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1165
    const-string v7, "did"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1166
    const-string v8, "bindflag"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1167
    const-string v9, "bindstate"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1168
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1169
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;-><init>()V

    .line 1170
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceName(Ljava/lang/String;)V

    .line 1171
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBleDeviceAddress(Ljava/lang/String;)V

    .line 1172
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setNickname(Ljava/lang/String;)V

    .line 1173
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setVer(Ljava/lang/String;)V

    .line 1174
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setCid(Ljava/lang/String;)V

    .line 1175
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setDid(Ljava/lang/String;)V

    .line 1176
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBindFlag(Ljava/lang/String;)V

    .line 1177
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->setBindState(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1183
    :cond_2
    throw v0
.end method

.method public getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1229
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT value FROM running_data WHERE key = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1231
    const-string/jumbo p1, "value"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1232
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 1237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1238
    :cond_2
    throw p1
.end method

.method public getSportHistoryNeedSyncGoogleFit(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM "

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 250
    :try_start_0
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " WHERE (type = ? or type = ?) and mid = ? and syncGoogleFit = ? GROUP BY uid,adddate ORDER BY adddate ASC Limit ?"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 251
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    filled-new-array {v4, v5, p1, p3, p4}, [Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {v3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 254
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    new-instance p1, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {p1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 256
    const-string/jumbo p2, "type"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 257
    const-string/jumbo p3, "step"

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 262
    invoke-virtual {p1, p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 263
    const-string p2, "distance"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    .line 264
    const-string p2, "calorie"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 265
    const-string p2, "heartrate"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setHeartrate(I)V

    .line 266
    const-string p2, "mid"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setUid(Ljava/lang/String;)V

    .line 267
    const-string/jumbo p2, "sync"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setSync(I)V

    .line 268
    const-string/jumbo p2, "timestamp"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 269
    const-string/jumbo p2, "timezone"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 270
    const-string p2, "adddate"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDate(Ljava/lang/String;)V

    .line 271
    const-string/jumbo p2, "syncGoogleFitId"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setSyncGoogleFitId(Ljava/lang/String;)V

    .line 272
    const-string/jumbo p2, "syncGoogleFit"

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setSyncGoogleFit(I)V

    .line 273
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 277
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 281
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_3
    throw p1
.end method

.method public getSportHistoryNeedSyncGoogleFitCnt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const-string v0, "SELECT count(step) FROM "

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 225
    :try_start_0
    sget-object v3, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " WHERE (type = ? or type = ?) and mid = ? and syncGoogleFit = ? ORDER BY adddate ASC"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 226
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {v0, v4, p1, p3}, [Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {v3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 229
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 230
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1

    :catch_0
    move-exception p2

    move v2, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 234
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_3
    throw p1
.end method

.method public insertAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)J
    .locals 3

    .line 919
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 920
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSubtype()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    const-string v1, "macid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "alarm_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 924
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "enable"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 925
    const-string p2, "name"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getHour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "hour"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getMinute()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "minute"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "starthour"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "startminute"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "endhour"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "endminute"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "snooze"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "snooze_repeat"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getRepeat_times()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "repeat_times"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {p2, v1, v2}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "createtime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "weekly"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "alarm_info"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;)J
    .locals 3

    .line 1398
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1399
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contactid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v1, "phone"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getPhoneNum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "createtime"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1404
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertDeviceInfo(Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;)V
    .locals 4

    .line 1129
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1131
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v1, "address"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBleDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string v1, "nickname"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adddate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v1, "ver"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v1, "cid"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v1, "did"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v1, "bindflag"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBindFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v1, "bindstate"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/BleDeviceItem;->getBindState()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "device_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertECardInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)J
    .locals 3

    .line 1456
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getEcardId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ecardid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1458
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "createtime"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1462
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ecards_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertEcgHistory11(Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;)V
    .locals 3

    .line 494
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 495
    const-string v1, "mid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v1, "macid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string/jumbo v1, "timezone"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v1, "ecg"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->ecg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v1, "heart"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->heart:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v1, "blood_high"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->blood_high:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v1, "blood_low"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->blood_low:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timestamp_record:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v1, "timestamp_record"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ecg_history"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertEcgHistory2(Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;)V
    .locals 3

    .line 584
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 585
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->dataind:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dataind"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string v1, "ecgid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->ecgid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->heart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heart"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->issync:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "issync"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->originSample:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "originSample"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->procSample:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "procSample"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->baseFilterData:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "baseFilterData"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 592
    const-string/jumbo v1, "sessionid"

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->sessionid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ecg_history2"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertEcgRecord11(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;)V
    .locals 3

    .line 304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 305
    const-string v1, "mid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->mid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "macid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 308
    const-string/jumbo v1, "timezone"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->healthScore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "healthScore"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->heartRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartRate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v1, "ecgScore"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgScore:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "hrvScore"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->hrvScore:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "ecgPosition1"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "ecgPosition2"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "ecgPosition3"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "ecgPosition4"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "ecgPosition5"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->ecgPosition5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v1, "suggest"

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;->suggest:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ecg_record"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertEcgRecord2(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;)V
    .locals 3

    .line 370
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 371
    const-string v1, "memberid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->memberid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v1, "macid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->dbp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dbp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->sbp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sbp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->adddate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "adddate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgdatacount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ecgdatacount"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v1, "ecgid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->healthScore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "healthScore"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartRate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v1, "ecgScore"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->ecgScore:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "hrvScore"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->hrvScore:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartavg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartavg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartmax:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartmax"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->heartmin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartmin"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string/jumbo v1, "sessionid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->sessionid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_arrhythmia:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "t_arrhythmia"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v1, "p_beatStop"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_beatStop:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "p_fastBeat"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_fastBeat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "p_pvc"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_pvc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "p_slowBeat"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_slowBeat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "p_vesc"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->p_vesc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_beatStop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "t_beatStop"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_fastBeat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "t_fastBeat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_pvc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "t_pvc"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_slowBeat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "t_slowBeat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->t_vesc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "t_vesc"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string/jumbo v1, "suggest"

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;->suggest:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ecg_record2"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertHeart(Ljava/lang/String;Ljava/lang/String;IFFJ)J
    .locals 2

    .line 1255
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1256
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string p1, "macid"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "isupload"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    const-string/jumbo p2, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    const-string/jumbo p2, "value"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1261
    const-string/jumbo p2, "shrinkvalue"

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1262
    const-string/jumbo p2, "timestamp"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1263
    new-instance p2, Ljava/util/Date;

    const-wide/16 p3, 0x3e8

    mul-long p6, p6, p3

    invoke-direct {p2, p6, p7}, Ljava/util/Date;-><init>(J)V

    const/4 p3, 0x5

    invoke-static {p2, p1, p3}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "adddate"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "health_history"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public insertRunHistory(Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;)J
    .locals 3

    .line 729
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 730
    const-string/jumbo v1, "runid"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getRunid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLocType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "locType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getSatellite()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "satellite"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getAddtimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "addtimestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 734
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 735
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 736
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "altitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 737
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getDirection()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 738
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getRadius()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 739
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "speed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 740
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->getHeartrate()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "heartrate"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "run_history"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertRunRecord(Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;)J
    .locals 4

    .line 621
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 622
    const-string/jumbo v1, "runid"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getRunid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string/jumbo v1, "uid"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v1, "macid"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getMacid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string/jumbo v1, "timezone"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v1, "mid"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getAddtimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "addtimestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotalcalories()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "totalcalories"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 631
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotaldistance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "totaldistance"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 632
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotalstep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "totalstep"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotaltime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "totaltime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getPace()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pace"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHeartrateavg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartrateavg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHeartratemax()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartratemax"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHasheart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hasheart"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 638
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getFinish()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "finish"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHasheart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHasstep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "hasstep"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "run_record"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertSession2(Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;)V
    .locals 3

    .line 535
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 536
    const-string/jumbo v1, "sessionid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->sessionid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v1, "memberid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->memberid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v1, "macid"

    iget-object v2, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->macid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->starttime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "starttime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    iget-wide v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->endtime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endtime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->fasttimes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fasttimes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->issync:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "issync"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->pvctimes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pvctimes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->slowtimes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "slowtimes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->stoptimes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stoptimes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    iget v1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    iget p1, p1, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->vesstimes:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "vesstimes"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ecg_session2"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public insertSmsRspInfo(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;)J
    .locals 3

    .line 1511
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1512
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getSmsRspId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "smsrspid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1513
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "createtime"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1516
    sget-object p1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "smsrsp_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertSportHistory(Ljava/lang/String;Ljava/lang/String;Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;ZZ)J
    .locals 17

    move-object/from16 v0, p2

    .line 963
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getMacid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getMacid()Ljava/lang/String;

    move-result-object v1

    .line 964
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 965
    const-string v3, "mid"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v3, "macid"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 968
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "step"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getDistance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "distance"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getCalorie()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "calorie"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getHeartrate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "heartrate"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    const-string/jumbo v4, "uid"

    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getSync()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 975
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getSync()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v8, "sync"

    invoke-virtual {v2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    :cond_1
    const-string/jumbo v4, "timezone"

    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimezone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 978
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 979
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {v4, v9, v8}, Lcom/jaga/ibraceletplus/jyring/util/DateUtil;->getDateString(Ljava/util/Date;II)Ljava/lang/String;

    move-result-object v4

    .line 980
    const-string v8, "adddate"

    invoke-virtual {v2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getTimestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 989
    const-string/jumbo v10, "sport_history"

    if-nez p5, :cond_2

    .line 990
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v10, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    .line 994
    :cond_2
    const-string v11, ", steps: "

    if-eqz p4, :cond_5

    .line 995
    sget-object v12, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "SELECT * FROM sport_history WHERE timestamp = ? and mid = ?"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 997
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 999
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1000
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1001
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x0

    .line 1002
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v9

    if-ne v13, v9, :cond_3

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1003
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v7

    if-eq v15, v7, :cond_7

    .line 1004
    const-string/jumbo v7, "syncGoogleFit"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "insertSportHistory: check the timestamp: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", old steps: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    const/4 v14, 0x1

    :cond_3
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x1

    goto :goto_1

    :cond_4
    move v9, v13

    goto :goto_2

    :cond_5
    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_2
    if-eqz v9, :cond_8

    if-eqz v14, :cond_6

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "insertSportHistory: update the timestamp: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    .line 1018
    :try_start_0
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "timestamp = ? and mid = ? and type = ? and macid = ?"

    .line 1019
    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getMacid()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v0, v5, v6}, [Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-virtual {v1, v10, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    .line 1023
    :catch_0
    const-string v0, "insertSportHistory: update Exception"

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1021
    :catch_1
    const-string v0, "insertSportHistory: update SQLiteConstraintException"

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1026
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertSportHistory ignore the timestamp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1029
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertSportHistory: insert the timestamp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->getStep()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    .line 1030
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v10, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 64
    const-string v0, "db onCreate version: 12"

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db onUpgrade version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->saveLog(Ljava/lang/String;)V

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p3, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->onUpgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public queryAlarmInfos(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;",
            ">;"
        }
    .end annotation

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 770
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "alarm_info"

    const-string v4, "*"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type = ? and macid = ?"

    .line 771
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p2

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 770
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 773
    const-string v2, "alarm_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 774
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 775
    const-string/jumbo v4, "weekly"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 776
    const-string/jumbo v5, "type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 777
    const-string/jumbo v6, "subtype"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 778
    const-string v7, "enable"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 780
    const-string v8, "fireday"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 781
    const-string v9, "hour"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 782
    const-string v10, "minute"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 784
    const-string/jumbo v11, "repeat_hour"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 785
    const-string/jumbo v12, "repeat_times"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 786
    const-string/jumbo v13, "repeat_schedule"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 788
    const-string/jumbo v14, "snooze"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 789
    const-string/jumbo v15, "snooze_repeat"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v0

    .line 791
    const-string/jumbo v0, "startyear"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p1, v0

    .line 792
    const-string/jumbo v0, "startmonth"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 p2, v0

    .line 793
    const-string/jumbo v0, "startday"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 794
    const-string/jumbo v0, "starthour"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .line 795
    const-string/jumbo v0, "startminute"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    .line 797
    const-string v0, "endyear"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    .line 798
    const-string v0, "endmonth"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    .line 799
    const-string v0, "endday"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    .line 800
    const-string v0, "endhour"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 801
    const-string v0, "endminute"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 803
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_0

    move/from16 v24, v0

    .line 804
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    move/from16 v25, v15

    .line 805
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v26, v14

    int-to-long v14, v15

    invoke-virtual {v0, v14, v15}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 806
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setName(Ljava/lang/String;)V

    .line 807
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    .line 808
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 809
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSubtype(I)V

    .line 810
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 811
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setFireday(Ljava/lang/String;)V

    .line 812
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setHour(I)V

    .line 813
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setMinute(I)V

    .line 814
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setRepeat_hour(I)V

    .line 815
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setRepeat_times(I)V

    .line 816
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setRepeat_schedule(I)V

    move/from16 v14, v26

    .line 817
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    move/from16 v15, v25

    move/from16 v25, v2

    .line 818
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    move/from16 v2, p1

    move/from16 p1, v3

    .line 819
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartYear(I)V

    move/from16 v3, p2

    move/from16 v26, v2

    .line 820
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartMonth(I)V

    move/from16 p2, v3

    move/from16 v2, v17

    .line 821
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartDay(I)V

    move/from16 v17, v2

    move/from16 v3, v18

    .line 822
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    move/from16 v18, v3

    move/from16 v2, v19

    .line 823
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    move/from16 v19, v2

    move/from16 v3, v20

    .line 824
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndYear(I)V

    move/from16 v20, v3

    move/from16 v2, v21

    .line 825
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndMonth(I)V

    move/from16 v21, v2

    move/from16 v3, v22

    .line 826
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndDay(I)V

    move/from16 v22, v3

    move/from16 v2, v23

    .line 827
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    move/from16 v23, v2

    move/from16 v3, v24

    .line 828
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    move-object/from16 v2, v16

    .line 829
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v2

    move v0, v3

    move/from16 v2, v25

    move/from16 v3, p1

    move/from16 p1, v26

    goto/16 :goto_0

    :cond_0
    move-object/from16 v2, v16

    if-eqz v1, :cond_1

    .line 833
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_2
    throw v0
.end method

.method public queryAlarmInfos2(ILjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 841
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    const-string v2, "*"

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 844
    :try_start_0
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "alarm_info"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "type = ? and macid = ? and alarm_id < 5"

    .line 845
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 844
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 848
    :cond_0
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "alarm_info"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "type = ? and macid = ? and alarm_id = 5"

    .line 849
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 848
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 852
    const-string v0, "alarm_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 853
    const-string v2, "name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 854
    const-string/jumbo v4, "weekly"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 855
    const-string/jumbo v5, "type"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 856
    const-string/jumbo v6, "subtype"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 857
    const-string v7, "enable"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 859
    const-string v8, "fireday"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 860
    const-string v9, "hour"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 861
    const-string v10, "minute"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 863
    const-string/jumbo v11, "repeat_hour"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 864
    const-string/jumbo v12, "repeat_times"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 865
    const-string/jumbo v13, "repeat_schedule"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 867
    const-string/jumbo v14, "snooze"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 868
    const-string/jumbo v15, "snooze_repeat"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v1

    .line 870
    const-string/jumbo v1, "startyear"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    .line 871
    const-string/jumbo v1, "startmonth"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 p2, v1

    .line 872
    const-string/jumbo v1, "startday"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 p3, v1

    .line 873
    const-string/jumbo v1, "starthour"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    .line 874
    const-string/jumbo v1, "startminute"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    .line 876
    const-string v1, "endyear"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    .line 877
    const-string v1, "endmonth"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    .line 878
    const-string v1, "endday"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    .line 879
    const-string v1, "endhour"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    .line 880
    const-string v1, "endminute"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 882
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_1

    move/from16 v23, v1

    .line 883
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>()V

    move/from16 v24, v15

    .line 884
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v25, v14

    int-to-long v14, v15

    invoke-virtual {v1, v14, v15}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setAlarm_id(J)V

    .line 885
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setName(Ljava/lang/String;)V

    .line 886
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    .line 887
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setType(I)V

    .line 888
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSubtype(I)V

    .line 889
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEnable(I)V

    .line 890
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setFireday(Ljava/lang/String;)V

    .line 891
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setHour(I)V

    .line 892
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setMinute(I)V

    .line 893
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setRepeat_hour(I)V

    .line 894
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setRepeat_times(I)V

    .line 895
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setRepeat_schedule(I)V

    move/from16 v14, v25

    .line 896
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    move/from16 v15, v24

    move/from16 v24, v0

    .line 897
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    move/from16 v0, p1

    move/from16 p1, v2

    .line 898
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartYear(I)V

    move/from16 v2, p2

    move/from16 v25, v0

    .line 899
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartMonth(I)V

    move/from16 v0, p3

    move/from16 p2, v2

    .line 900
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartDay(I)V

    move/from16 p3, v0

    move/from16 v2, v17

    .line 901
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    move/from16 v17, v2

    move/from16 v0, v18

    .line 902
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    move/from16 v18, v0

    move/from16 v2, v19

    .line 903
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndYear(I)V

    move/from16 v19, v2

    move/from16 v0, v20

    .line 904
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndMonth(I)V

    move/from16 v20, v0

    move/from16 v2, v21

    .line 905
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndDay(I)V

    move/from16 v21, v2

    move/from16 v0, v22

    .line 906
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    move/from16 v22, v0

    move/from16 v2, v23

    .line 907
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    move-object/from16 v0, v16

    .line 908
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v0

    move v1, v2

    move/from16 v0, v24

    move/from16 v2, p1

    move/from16 p1, v25

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, v16

    if-eqz v3, :cond_2

    .line 912
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 913
    :cond_3
    throw v0
.end method

.method public queryBodyHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1315
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    if-ltz p3, :cond_0

    const/4 v1, 0x5

    .line 1318
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, " and type = ?"

    goto :goto_0

    .line 1316
    :cond_0
    const-string p1, ""

    :goto_0
    move-object v4, v1

    .line 1321
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "*"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const-string p2, "macid = ? and uid = ? and timestamp >= ? and timestamp <= ?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp asc"

    const-string v1, "health_history"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1324
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1327
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-direct {p3}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;-><init>()V

    .line 1328
    const-string/jumbo p4, "type"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setType(I)V

    .line 1329
    const-string/jumbo p4, "uid"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setMid(Ljava/lang/String;)V

    .line 1330
    const-string/jumbo p4, "timestamp"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    int-to-long p4, p4

    invoke-virtual {p3, p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setTimestamp(J)V

    .line 1331
    const-string p4, "adddate"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setAddDate(Ljava/lang/String;)V

    .line 1332
    const-string/jumbo p4, "value"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setValue1(F)V

    .line 1333
    const-string/jumbo p4, "shrinkvalue"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setValue2(F)V

    .line 1334
    const-string p4, "macid"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setMacid(Ljava/lang/String;)V

    .line 1335
    const-string p4, "isupload"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setIsUpload(I)V

    .line 1336
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1338
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryBodyHistory2(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1345
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v1, v6

    if-ltz p3, :cond_0

    const/4 v1, 0x5

    .line 1348
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, " and type = ?"

    goto :goto_0

    .line 1346
    :cond_0
    const-string p1, ""

    :goto_0
    move-object v4, v1

    .line 1351
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "*"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const-string p2, "macid = ? and uid = ? and timestamp >= ? and timestamp <= ?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp asc"

    const-string v1, "health_history"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1354
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1357
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;

    invoke-direct {p3}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;-><init>()V

    .line 1358
    const-string/jumbo p4, "type"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setType(I)V

    .line 1359
    const-string/jumbo p4, "uid"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setMid(Ljava/lang/String;)V

    .line 1360
    const-string/jumbo p4, "timestamp"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    int-to-long p4, p4

    invoke-virtual {p3, p4, p5}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setTimestamp(J)V

    .line 1361
    const-string p4, "adddate"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setAddDate(Ljava/lang/String;)V

    .line 1362
    const-string/jumbo p4, "value"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getFloat(I)F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setValue1(F)V

    .line 1363
    const-string/jumbo p4, "shrinkvalue"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getFloat(I)F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setValue2(F)V

    .line 1364
    const-string p4, "macid"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setMacid(Ljava/lang/String;)V

    .line 1365
    const-string p4, "isupload"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/jaga/ibraceletplus/jyring/bean/BodyInfoItem;->setIsUpload(I)V

    .line 1366
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1368
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryContactInfos()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;",
            ">;"
        }
    .end annotation

    .line 1374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1376
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "contact_info"

    const-string v4, "*"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "1==1"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1378
    const-string v2, "contactid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1379
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1380
    const-string v4, "phone"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1382
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1383
    new-instance v5, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;

    invoke-direct {v5}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;-><init>()V

    .line 1384
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->setContactId(I)V

    .line 1385
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->setContactName(Ljava/lang/String;)V

    .line 1386
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->setPhoneNum(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1391
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1392
    :cond_2
    throw v0
.end method

.method public queryECardInfos()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;",
            ">;"
        }
    .end annotation

    .line 1432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1434
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ecards_info"

    const-string v4, "*"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "1==1"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1436
    const-string v2, "ecardid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1437
    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1438
    const-string v4, "content"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1440
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1441
    new-instance v5, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;

    invoke-direct {v5}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;-><init>()V

    .line 1442
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->setEcardId(I)V

    .line 1443
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->setName(Ljava/lang/String;)V

    .line 1444
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->setContent(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1449
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1450
    :cond_2
    throw v0
.end method

.method public queryEcgHistorys11(J)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;",
            ">;"
        }
    .end annotation

    .line 508
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "ecg_history"

    const-string/jumbo v3, "timestamp_record = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 511
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;-><init>()V

    .line 514
    const-string v1, "macid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->macid:Ljava/lang/String;

    .line 515
    const-string v1, "mid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->mid:Ljava/lang/String;

    .line 516
    const-string/jumbo v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timestamp:J

    .line 517
    const-string/jumbo v1, "timezone"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timezone:Ljava/lang/String;

    .line 518
    const-string v1, "ecg"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->ecg:Ljava/lang/String;

    .line 519
    const-string v1, "heart"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->heart:Ljava/lang/String;

    .line 520
    const-string v1, "blood_high"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->blood_high:Ljava/lang/String;

    .line 521
    const-string v1, "blood_low"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->blood_low:Ljava/lang/String;

    .line 522
    const-string/jumbo v1, "timestamp_record"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory;->timestamp_record:J

    .line 523
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryEcgHistorys2(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;",
            ">;"
        }
    .end annotation

    .line 597
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "ecg_history2"

    const-string v3, "ecgid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;-><init>()V

    .line 603
    const-string v2, "dataind"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->dataind:I

    .line 604
    const-string v2, "ecgid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->ecgid:Ljava/lang/String;

    .line 605
    const-string v2, "heart"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->heart:I

    .line 606
    const-string v2, "issync"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->issync:I

    .line 607
    const-string v2, "originSample"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->originSample:I

    .line 608
    const-string v2, "procSample"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->procSample:I

    .line 609
    const-string v2, "baseFilterData"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->baseFilterData:D

    .line 610
    const-string/jumbo v2, "sessionid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgHistory2;->sessionid:Ljava/lang/String;

    .line 611
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public queryEcgRecord11(J)Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;
    .locals 8

    .line 342
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 342
    const-string v1, "ecg_record"

    const-string/jumbo v3, "timestamp = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 344
    new-instance p2, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;

    invoke-direct {p2}, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;-><init>()V

    .line 345
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0, p2, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->setEcgRecord11(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;Landroid/database/Cursor;)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryEcgRecord2(J)Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;
    .locals 8

    .line 450
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 450
    const-string v1, "ecg_record2"

    const-string/jumbo v3, "timestamp = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 452
    new-instance p2, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    invoke-direct {p2}, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;-><init>()V

    .line 453
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, p2, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->setEcgRecord2(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;Landroid/database/Cursor;)V

    goto :goto_0

    .line 457
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryEcgRecords11(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;",
            ">;"
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp desc"

    .line 354
    const-string v1, "ecg_record"

    const-string v3, "macid = ? and (mid = ? or mid = \'\') and timestamp >= ? and timestamp <= ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 359
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 360
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 361
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;

    invoke-direct {p3}, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;-><init>()V

    .line 362
    invoke-direct {p0, p3, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->setEcgRecord11(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord;Landroid/database/Cursor;)V

    .line 363
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryEcgRecords2(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;",
            ">;"
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp desc"

    const-string v1, "ecg_record2"

    const-string/jumbo v3, "sessionid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;-><init>()V

    .line 486
    invoke-direct {p0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->setEcgRecord2(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;Landroid/database/Cursor;)V

    .line 487
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public queryEcgRecords2(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;",
            ">;"
        }
    .end annotation

    .line 462
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 464
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp desc"

    .line 462
    const-string v1, "ecg_record2"

    const-string v3, "macid = ? and (memberid = ? or memberid = \'\') and timestamp >= ? and timestamp <= ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 467
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 468
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 469
    new-instance p3, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;

    invoke-direct {p3}, Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;-><init>()V

    .line 470
    invoke-direct {p0, p3, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->setEcgRecord2(Lcom/jaga/ibraceletplus/jyring/bean/EcgRecord2;Landroid/database/Cursor;)V

    .line 471
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryEcgSession2(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;",
            ">;"
        }
    .end annotation

    .line 553
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string/jumbo v7, "starttime desc"

    const-string v1, "ecg_session2"

    const-string v3, "memberid = ? and macid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 556
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;-><init>()V

    .line 559
    const-string v1, "memberid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->memberid:Ljava/lang/String;

    .line 560
    const-string v1, "macid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->macid:Ljava/lang/String;

    .line 561
    const-string v1, "count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->count:I

    .line 562
    const-string/jumbo v1, "starttime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->starttime:J

    .line 563
    const-string v1, "endtime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->endtime:J

    .line 564
    const-string v1, "fasttimes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->fasttimes:I

    .line 565
    const-string v1, "issync"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->issync:I

    .line 566
    const-string v1, "pvctimes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->pvctimes:I

    .line 567
    const-string/jumbo v1, "slowtimes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->slowtimes:I

    .line 568
    const-string/jumbo v1, "stoptimes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->stoptimes:I

    .line 569
    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->type:I

    .line 570
    const-string/jumbo v1, "vesstimes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->vesstimes:I

    .line 571
    const-string/jumbo v1, "sessionid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jaga/ibraceletplus/jyring/bean/EcgSession2;->sessionid:Ljava/lang/String;

    .line 572
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 574
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryHeart(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1291
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 1292
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x5

    .line 1293
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    const-string v5, ""

    const/16 v6, 0xa

    if-ge v1, v6, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1296
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "*"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 1298
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v8, "adddate desc"

    .line 1299
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1296
    const-string v2, "health_history"

    const-string/jumbo v4, "uid = ? and macid = ? and type = ? and adddate like ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1300
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1302
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1303
    const-string/jumbo p4, "value"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-string/jumbo p4, "shrinkvalue"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string p4, "isupload"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-string p4, "adddate"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1309
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryHeartStats(Ljava/lang/String;Ljava/lang/String;I)[F
    .locals 12

    .line 1271
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 1272
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x5

    .line 1273
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0"

    const-string v7, ""

    const/16 v8, 0xa

    if-ge v2, v8, :cond_0

    move-object v9, v6

    goto :goto_0

    :cond_0
    move-object v9, v7

    :goto_0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v4, v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    sget-object v4, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "max(value) max, min(value) min, avg(value) avg, count(value) count"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    .line 1277
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v11, "adddate desc"

    .line 1275
    const-string v5, "health_history"

    const-string/jumbo v7, "uid = ? and macid = ? and type = ? and adddate like ?"

    const-string/jumbo v9, "type"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x4

    .line 1279
    new-array p2, p2, [F

    .line 1280
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1281
    const-string p3, "max"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result p3

    const/4 v0, 0x0

    aput p3, p2, v0

    .line 1282
    const-string p3, "min"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result p3

    aput p3, p2, v3

    .line 1283
    const-string p3, "avg"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result p3

    aput p3, p2, v1

    .line 1284
    const-string p3, "count"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getFloat(I)F

    move-result p3

    const/4 v0, 0x3

    aput p3, p2, v0

    goto :goto_2

    .line 1286
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public queryRunHistory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;",
            ">;"
        }
    .end annotation

    .line 746
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "addtimestamp asc"

    const-string/jumbo v1, "run_history"

    const-string/jumbo v3, "runid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 748
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;-><init>()V

    .line 750
    const-string v2, "addtimestamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setAddtimestamp(J)V

    .line 751
    const-string v2, "altitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setAltitude(D)V

    .line 752
    const-string v2, "direction"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setDirection(F)V

    .line 753
    const-string v2, "latitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setLatitude(D)V

    .line 754
    const-string v2, "longitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setLongitude(D)V

    .line 755
    const-string v2, "locType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setLocType(I)V

    .line 756
    const-string v2, "radius"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setRadius(F)V

    .line 757
    const-string/jumbo v2, "speed"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setSpeed(F)V

    .line 758
    const-string/jumbo v2, "satellite"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setSatellite(I)V

    .line 759
    const-string v2, "heartrate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunHistoryItem;->setHeartrate(I)V

    .line 760
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public queryRunRecord(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 664
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    const/4 v1, 0x2

    .line 667
    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "(mid = ? or mid = \'\') and finish = ?"

    goto :goto_0

    .line 665
    :cond_0
    const-string v0, "(mid = ? or mid = \'\') and finish != 2"

    :goto_0
    move-object v5, v0

    move-object v6, v1

    .line 669
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string/jumbo v9, "runid desc"

    const-string/jumbo v3, "run_record"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    new-instance v2, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-direct {v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;-><init>()V

    .line 675
    invoke-virtual {v2, p2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setFinish(I)V

    .line 676
    invoke-virtual {v2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMid(Ljava/lang/String;)V

    .line 677
    const-string/jumbo v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setType(I)V

    .line 678
    const-string v3, "addtimestamp"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setAddtimestamp(J)V

    .line 679
    const-string/jumbo v3, "runid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setRunid(Ljava/lang/String;)V

    .line 680
    const-string/jumbo v3, "uid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setUid(Ljava/lang/String;)V

    .line 681
    const-string v3, "macid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMacid(Ljava/lang/String;)V

    .line 682
    const-string/jumbo v3, "timezone"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTimezone(Ljava/lang/String;)V

    .line 683
    const-string v3, "mid"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMid(Ljava/lang/String;)V

    .line 684
    const-string/jumbo v3, "totalcalories"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotalcalories(F)V

    .line 685
    const-string/jumbo v3, "totaldistance"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotaldistance(F)V

    .line 686
    const-string/jumbo v3, "totalstep"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotalstep(I)V

    .line 687
    const-string/jumbo v3, "totaltime"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotaltime(I)V

    .line 688
    const-string v3, "pace"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setPace(I)V

    .line 689
    const-string v3, "heartrateavg"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartrateavg(I)V

    .line 690
    const-string v3, "heartratemax"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartratemax(I)V

    .line 691
    const-string v3, "hasheart"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasheart(I)V

    .line 692
    const-string v3, "hasstep"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasstep(I)V

    .line 693
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    return-object v1
.end method

.method public queryRunRecordByRunid(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;",
            ">;"
        }
    .end annotation

    .line 700
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "addtimestamp asc"

    const-string/jumbo v1, "run_record"

    const-string v3, "(mid = ? or mid = \'\') and runid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;-><init>()V

    .line 705
    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMid(Ljava/lang/String;)V

    .line 706
    const-string/jumbo v2, "type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setType(I)V

    .line 707
    const-string v2, "addtimestamp"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setAddtimestamp(J)V

    .line 708
    const-string/jumbo v2, "runid"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setRunid(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v2, "uid"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setUid(Ljava/lang/String;)V

    .line 710
    const-string v2, "macid"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMacid(Ljava/lang/String;)V

    .line 711
    const-string/jumbo v2, "timezone"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTimezone(Ljava/lang/String;)V

    .line 712
    const-string v2, "mid"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setMid(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v2, "totalcalories"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotalcalories(F)V

    .line 714
    const-string/jumbo v2, "totaldistance"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotaldistance(F)V

    .line 715
    const-string/jumbo v2, "totalstep"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotalstep(I)V

    .line 716
    const-string/jumbo v2, "totaltime"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setTotaltime(I)V

    .line 717
    const-string v2, "pace"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setPace(I)V

    .line 718
    const-string v2, "heartrateavg"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartrateavg(I)V

    .line 719
    const-string v2, "heartratemax"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHeartratemax(I)V

    .line 720
    const-string v2, "hasheart"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasheart(I)V

    .line 721
    const-string v2, "hasstep"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->setHasstep(I)V

    .line 722
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v0
.end method

.method public querySmsRspInfos()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation

    .line 1489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1491
    :try_start_0
    sget-object v2, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "smsrsp_info"

    const-string v4, "*"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "1==1"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1493
    const-string/jumbo v2, "smsrspid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1494
    const-string v3, "content"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1496
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1497
    new-instance v4, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    invoke-direct {v4}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;-><init>()V

    .line 1498
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->setSmsRspId(I)V

    .line 1499
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->setContent(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1505
    :cond_2
    throw v0
.end method

.method public querySportHistory(Ljava/lang/String;Ljava/lang/String;IJJ)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ)",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation

    move/from16 v0, p3

    const/4 v1, 0x4

    .line 1047
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v2, v7

    const/16 v5, 0x64

    if-ne v0, v5, :cond_0

    .line 1049
    const-string p1, " and type > 100"

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/4 v2, 0x5

    .line 1052
    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, " and type = ?"

    goto :goto_0

    .line 1050
    :cond_1
    const-string p1, ""

    :goto_0
    move-object v9, v2

    .line 1055
    sget-object v5, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "*"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const-string p2, "macid = ? and mid = ? and timestamp >= ? and timestamp <= ?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const-string/jumbo v12, "timestamp asc"

    const-string/jumbo v6, "sport_history"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1058
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1061
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 1062
    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1063
    const-string/jumbo v2, "step"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v4, :cond_2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1067
    :cond_2
    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 1068
    invoke-virtual {v0, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 1069
    const-string v1, "distance"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    .line 1070
    const-string v1, "calorie"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 1071
    const-string v1, "heartrate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setHeartrate(I)V

    .line 1072
    const-string/jumbo v1, "uid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setUid(Ljava/lang/String;)V

    .line 1073
    const-string/jumbo v1, "sync"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setSync(I)V

    .line 1074
    const-string/jumbo v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 1075
    const-string/jumbo v1, "timezone"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 1076
    const-string v1, "adddate"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDate(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1079
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public querySportHistoryLocal(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1084
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, ""

    const-string/jumbo v1, "sport_history"

    const-string v3, "mid = ? and sync != 1"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1090
    new-instance v1, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;

    invoke-direct {v1}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;-><init>()V

    .line 1091
    const-string/jumbo v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1092
    const-string/jumbo v3, "step"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    if-nez v3, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setType(I)V

    .line 1097
    invoke-virtual {v1, v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setStep(I)V

    .line 1098
    const-string v2, "distance"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDistance(I)V

    .line 1099
    const-string v2, "calorie"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setCalorie(I)V

    .line 1100
    const-string v2, "heartrate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setHeartrate(I)V

    .line 1101
    const-string/jumbo v2, "uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setUid(Ljava/lang/String;)V

    .line 1102
    const-string/jumbo v2, "sync"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setSync(I)V

    .line 1103
    const-string/jumbo v2, "timestamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimestamp(J)V

    .line 1104
    const-string/jumbo v2, "timezone"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setTimezone(Ljava/lang/String;)V

    .line 1105
    const-string v2, "adddate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setDate(Ljava/lang/String;)V

    .line 1106
    const-string v2, "macid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setMacid(Ljava/lang/String;)V

    .line 1107
    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jaga/ibraceletplus/jyring/bean/SportHistoryItem;->setId(I)V

    .line 1108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1110
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public updateAlarmInfo(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;Ljava/lang/String;)I
    .locals 5

    .line 943
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 944
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSubtype()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStarthour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "starthour"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getStartminute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "startminute"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 949
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndhour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "endhour"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEndminute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "endminute"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 953
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "snooze"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "snooze_repeat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getRepeat_times()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "repeat_times"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "weekly"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 958
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 957
    const-string p2, "alarm_info"

    const-string v2, "macid = ? and type = ? and alarm_id = ?"

    invoke-virtual {v1, p2, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateContactInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;)I
    .locals 4

    .line 1409
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1410
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contactid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1411
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v1, "phone"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createtime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1414
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 1415
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ContactInfoItem;->getContactId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1414
    const-string v2, "contact_info"

    const-string v3, "contactid = ?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateECardInfo(Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;)I
    .locals 4

    .line 1467
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1468
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getEcardId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ecardid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1469
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createtime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1472
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 1473
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/ECardInfoItem;->getEcardId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1472
    const-string v2, "ecards_info"

    const-string v3, "ecardid = ?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateRunRecord(Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;)I
    .locals 4

    .line 646
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 647
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getAddtimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "addtimestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 648
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotalcalories()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "totalcalories"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 649
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotaldistance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "totaldistance"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 650
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotalstep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "totalstep"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getTotaltime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "totaltime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getPace()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pace"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHeartrateavg()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartrateavg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHeartratemax()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "heartratemax"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHasheart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hasheart"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getHasstep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hasstep"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getFinish()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "finish"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/bean/RunRecordItem;->getRunid()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "run_record"

    const-string/jumbo v3, "runid = ?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateSmsRspInfo(Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;)I
    .locals 4

    .line 1521
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1522
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getSmsRspId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "smsrspid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1523
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createtime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1525
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 1526
    invoke-virtual {p1}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->getSmsRspId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1525
    const-string/jumbo v2, "smsrsp_info"

    const-string/jumbo v3, "smsrspid = ?"

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateSportHistory(Ljava/lang/String;)V
    .locals 4

    .line 1115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 1116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sync"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1117
    sget-object v1, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "sport_history"

    invoke-virtual {v1, v3, v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateSportHistoryNeedSyncGoogleFitState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1

    .line 288
    new-instance p6, Landroid/content/ContentValues;

    invoke-direct {p6}, Landroid/content/ContentValues;-><init>()V

    .line 290
    const-string/jumbo v0, "syncGoogleFit"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p6, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_0

    .line 293
    const-string/jumbo p4, "syncGoogleFitId"

    invoke-virtual {p6, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    sget-object p4, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p5, "adddate = ? and mid = ?"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p6, p5, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
