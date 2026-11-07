.class public Lcom/keeprapid/serverdataload/util/OrmUtil;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "OrmUtil.java"


# static fields
.field private static ormUtil:Lcom/keeprapid/serverdataload/util/OrmUtil; = null

.field private static sqLiteName:Ljava/lang/String; = "server.db"

.field private static sqLiteVersion:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keeprapid/serverdataload/util/OrmUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static createObject(Ljava/lang/Object;)I
    .locals 2

    .line 69
    :try_start_0
    sget-object v0, Lcom/keeprapid/serverdataload/util/OrmUtil;->ormUtil:Lcom/keeprapid/serverdataload/util/OrmUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 70
    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static deleteObject(Ljava/lang/Class;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 102
    :try_start_0
    sget-object v0, Lcom/keeprapid/serverdataload/util/OrmUtil;->ormUtil:Lcom/keeprapid/serverdataload/util/OrmUtil;

    invoke-virtual {v0, p0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0

    .line 103
    invoke-interface {p0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteIds(Ljava/util/Collection;)I

    move-result p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getKey(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Key;
    .locals 2

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string v1, "mid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-class v1, Lcom/keeprapid/serverdataload/model/Key;

    invoke-static {v1, v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->queryObject(Ljava/lang/Class;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/keeprapid/serverdataload/model/Key;

    invoke-direct {v1}, Lcom/keeprapid/serverdataload/model/Key;-><init>()V

    .line 116
    iput-object p0, v1, Lcom/keeprapid/serverdataload/model/Key;->mid:Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 118
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keeprapid/serverdataload/model/Key;

    return-object p0

    .line 120
    :cond_0
    invoke-static {v1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->createObject(Ljava/lang/Object;)I

    return-object v1
.end method

.method public static getProgress(Ljava/lang/String;)Lcom/keeprapid/serverdataload/model/Progress;
    .locals 2

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string v1, "mid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-class p0, Lcom/keeprapid/serverdataload/model/Progress;

    invoke-static {p0, v0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->queryObject(Ljava/lang/Class;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    .line 129
    new-instance v0, Lcom/keeprapid/serverdataload/model/Progress;

    invoke-direct {v0}, Lcom/keeprapid/serverdataload/model/Progress;-><init>()V

    .line 130
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keeprapid/serverdataload/model/Progress;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 62
    sget-object v0, Lcom/keeprapid/serverdataload/util/OrmUtil;->ormUtil:Lcom/keeprapid/serverdataload/util/OrmUtil;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/keeprapid/serverdataload/util/OrmUtil;

    sget-object v1, Lcom/keeprapid/serverdataload/util/OrmUtil;->sqLiteName:Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/keeprapid/serverdataload/util/OrmUtil;->sqLiteVersion:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/keeprapid/serverdataload/util/OrmUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/keeprapid/serverdataload/util/OrmUtil;->ormUtil:Lcom/keeprapid/serverdataload/util/OrmUtil;

    :cond_0
    return-void
.end method

.method public static queryObject(Ljava/lang/Class;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :try_start_0
    sget-object v1, Lcom/keeprapid/serverdataload/util/OrmUtil;->ormUtil:Lcom/keeprapid/serverdataload/util/OrmUtil;

    invoke-virtual {v1, p0}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object p0

    .line 92
    invoke-interface {p0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForFieldValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v0
.end method

.method public static updateObject(Ljava/lang/Object;)I
    .locals 2

    .line 80
    :try_start_0
    sget-object v0, Lcom/keeprapid/serverdataload/util/OrmUtil;->ormUtil:Lcom/keeprapid/serverdataload/util/OrmUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 81
    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private upgrade(Lcom/j256/ormlite/support/ConnectionSource;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 51
    :cond_0
    :try_start_0
    const-class p2, Lcom/keeprapid/serverdataload/model/Key;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 52
    const-class p2, Lcom/keeprapid/serverdataload/model/Progress;

    invoke-static {p1, p2}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    const/4 v0, 0x0

    .line 32
    sget v1, Lcom/keeprapid/serverdataload/util/OrmUtil;->sqLiteVersion:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/keeprapid/serverdataload/util/OrmUtil;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-gt p3, p4, :cond_0

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/keeprapid/serverdataload/util/OrmUtil;->upgrade(Lcom/j256/ormlite/support/ConnectionSource;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
