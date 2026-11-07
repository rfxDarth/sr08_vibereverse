.class public Lnet/grandcentrix/tray/provider/TrayDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrayDBHelper.java"


# static fields
.field public static final CREATED:Ljava/lang/String; = "CREATED"

.field public static final DATABASE_NAME:Ljava/lang/String; = "tray.db"

.field public static final DATABASE_NAME_NO_BACKUP:Ljava/lang/String; = "tray_backup_excluded.db"

.field static final DATABASE_VERSION:I = 0x2

.field public static final INTERNAL_TABLE_NAME:Ljava/lang/String; = "TrayInternal"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final MIGRATED_KEY:Ljava/lang/String; = "MIGRATED_KEY"

.field public static final MODULE:Ljava/lang/String; = "MODULE"

.field public static final TABLE_NAME:Ljava/lang/String; = "TrayPreferences"

.field public static final UPDATED:Ljava/lang/String; = "UPDATED"

.field public static final V1_PREFERENCES_CREATE:Ljava/lang/String; = "CREATE TABLE TrayPreferences ( _id INTEGER PRIMARY KEY, KEY TEXT NOT NULL, VALUE TEXT, MODULE TEXT, CREATED INT DEFAULT 0, UPDATED INT DEFAULT 0, UNIQUE (MODULE, KEY));"

.field public static final V2_ALTER_PREFERENCES_TABLE:Ljava/lang/String; = "ALTER TABLE TrayPreferences ADD COLUMN MIGRATED_KEY TEXT"

.field public static final V2_CREATE_INTERNAL_TRAY_TABLE:Ljava/lang/String; = "CREATE TABLE TrayInternal ( _id INTEGER PRIMARY KEY, KEY TEXT NOT NULL, VALUE TEXT, MODULE TEXT, CREATED INT DEFAULT 0, UPDATED INT DEFAULT 0, MIGRATED_KEY TEXT, UNIQUE (MODULE, KEY));"

.field public static final VALUE:Ljava/lang/String; = "VALUE"


# instance fields
.field private final mCreateVersion:I

.field private final mWithBackup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, p1, v0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 101
    iput-boolean p3, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mWithBackup:Z

    .line 102
    iput p4, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 110
    const-string v0, "tray.db"

    goto :goto_0

    :cond_0
    const-string v0, "tray_backup_excluded.db"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 112
    iput-boolean p2, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mWithBackup:Z

    .line 113
    iput v2, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    return-void
.end method

.method private createV1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 152
    const-string v0, "CREATE TABLE TrayPreferences ( _id INTEGER PRIMARY KEY, KEY TEXT NOT NULL, VALUE TEXT, MODULE TEXT, CREATED INT DEFAULT 0, UPDATED INT DEFAULT 0, UNIQUE (MODULE, KEY));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private logTag()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tray internal db ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mWithBackup:Z

    if-eqz v1, :cond_0

    const-string v1, "backup"

    goto :goto_0

    :cond_0
    const-string v1, "no backup"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 161
    const-string v0, "ALTER TABLE TrayPreferences ADD COLUMN MIGRATED_KEY TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string v0, "CREATE TABLE TrayInternal ( _id INTEGER PRIMARY KEY, KEY TEXT NOT NULL, VALUE TEXT, MODULE TEXT, CREATED INT DEFAULT 0, UPDATED INT DEFAULT 0, MIGRATED_KEY TEXT, UNIQUE (MODULE, KEY));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCreate with version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->createV1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "created database version 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lnet/grandcentrix/tray/provider/TrayDBHelper;->mCreateVersion:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 124
    invoke-virtual {p0, p1, v1, v0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "upgrading Database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-gt p3, v0, :cond_1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->logTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "upgraded Database to version 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "onUpgrade() with oldVersion <= 0 is useless"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onUpgrade doesn\'t support the upgrade to version "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
