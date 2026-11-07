.class public Lnet/grandcentrix/tray/provider/TrayContentProvider;
.super Landroid/content/ContentProvider;
.source "TrayContentProvider.java"


# static fields
.field private static final ALL_PREFERENCE:I = 0x1e

.field private static final INTERNAL_ALL_PREFERENCE:I = 0x82

.field private static final INTERNAL_MODULE_PREFERENCE:I = 0x78

.field private static final INTERNAL_SINGLE_PREFERENCE:I = 0x6e

.field private static final MODULE_PREFERENCE:I = 0x14

.field private static final SINGLE_PREFERENCE:I = 0xa

.field private static sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field mDeviceDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

.field mUserDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static setAuthority(Ljava/lang/String;)V
    .locals 3

    .line 331
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 333
    const-string v1, "preferences"

    const/16 v2, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    sget-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "preferences/*"

    const/16 v2, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    sget-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "preferences/*/*"

    const/16 v2, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    sget-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "internal_preferences"

    const/16 v2, 0x82

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    sget-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "internal_preferences/*"

    const/16 v2, 0x78

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    sget-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "internal_preferences/*/*"

    const/16 v2, 0x6e

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 221
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 222
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->setAuthority(Ljava/lang/String;)V

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TrayContentProvider registered for authority: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 72
    sget-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_2

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Delete is not supported for Uri: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 76
    :cond_1
    const-string v0, "KEY = ?"

    invoke-static {p2, v0}, Lnet/grandcentrix/tray/provider/SqliteHelper;->extendSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {p3, v0}, Lnet/grandcentrix/tray/provider/SqliteHelper;->extendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 83
    :cond_2
    const-string v0, "MODULE = ?"

    invoke-static {p2, v0}, Lnet/grandcentrix/tray/provider/SqliteHelper;->extendSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p3, v0}, Lnet/grandcentrix/tray/provider/SqliteHelper;->extendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 96
    :cond_3
    :goto_0
    const-string v0, "backup"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mDeviceDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getTable(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 100
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mUserDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {v1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 101
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getTable(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    add-int/2addr v0, p2

    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getWritableDatabase(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 105
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getTable(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-lez v0, :cond_5

    .line 110
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5
    return v0
.end method

.method public getReadableDatabase(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->shouldBackup(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mUserDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mDeviceDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public getTable(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_0
    sget-object v0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x78

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    .line 138
    const-string p1, "TrayPreferences"

    return-object p1

    .line 143
    :cond_1
    const-string p1, "TrayInternal"

    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWritableDatabase(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->shouldBackup(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mUserDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1

    .line 156
    :cond_0
    iget-object p1, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mDeviceDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {p1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .line 162
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 163
    sget-object v1, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insert is not supported for Uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CREATED"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "UPDATED"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MODULE"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "KEY"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    .line 186
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getWritableDatabase(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getTable(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "MODULE = ?AND KEY = ?"

    move-object v3, p0

    move-object v8, p2

    invoke-virtual/range {v3 .. v9}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    .line 192
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    :cond_2
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t update or insert data. Uri: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 199
    :cond_3
    const-string p1, "unknown SQLite error"

    invoke-static {p1}, Lnet/grandcentrix/tray/core/TrayLog;->w(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 0

    .line 208
    invoke-static/range {p1 .. p6}, Lnet/grandcentrix/tray/provider/SqliteHelper;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onCreate()Z
    .locals 4

    .line 214
    new-instance v0, Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/grandcentrix/tray/provider/TrayDBHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mUserDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    .line 215
    new-instance v0, Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lnet/grandcentrix/tray/provider/TrayDBHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mDeviceDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 229
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 230
    sget-object v1, Lnet/grandcentrix/tray/provider/TrayContentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v2, 0x6e

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    const/16 v4, 0x14

    if-eq v1, v4, :cond_2

    const/16 v4, 0x1e

    if-eq v1, v4, :cond_5

    if-eq v1, v2, :cond_1

    const/16 v4, 0x78

    if-eq v1, v4, :cond_2

    const/16 v2, 0x82

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Query is not supported for Uri: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 235
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KEY = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_2
    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_4

    .line 243
    :cond_3
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 245
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MODULE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 251
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getTable(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 258
    const-string v1, "backup"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 261
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mUserDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    .line 262
    invoke-virtual {v1}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 264
    iget-object p3, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mDeviceDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    .line 265
    invoke-virtual {p3}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 268
    new-instance p4, Landroid/database/MergeCursor;

    new-array p5, v9, [Landroid/database/Cursor;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    aput-object p3, p5, v8

    invoke-direct {p4, p5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1

    :cond_6
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 271
    invoke-virtual {p0, p1}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getReadableDatabase(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_7

    .line 276
    invoke-virtual {p0}, Lnet/grandcentrix/tray/provider/TrayContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {p4, p2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_7
    return-object p4
.end method

.method shouldBackup(Landroid/net/Uri;)Z
    .locals 1

    .line 326
    const-string v0, "backup"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 327
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public shutdown()V
    .locals 1

    .line 283
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mUserDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->close()V

    .line 284
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayContentProvider;->mDeviceDbHelper:Lnet/grandcentrix/tray/provider/TrayDBHelper;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayDBHelper;->close()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 290
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
