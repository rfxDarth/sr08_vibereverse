.class public Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;
.source "BingMapTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;",
        "Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_URL_PATTERN:Ljava/lang/String; = "https://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&uriScheme=https&key=%s"

.field private static final BING_KEY:Ljava/lang/String; = "BING_KEY"

.field private static final FILENAME_ENDING:Ljava/lang/String; = ".jpeg"

.field public static final IMAGERYSET_AERIAL:Ljava/lang/String; = "Aerial"

.field public static final IMAGERYSET_AERIALWITHLABELS:Ljava/lang/String; = "AerialWithLabels"

.field public static final IMAGERYSET_ROAD:Ljava/lang/String; = "Road"

.field private static mBingMapKey:Ljava/lang/String; = ""


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

.field private mLocale:Ljava/lang/String;

.field private mStyle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 84
    const-string v5, ".jpeg"

    const/4 v6, 0x0

    const-string v1, "BingMaps"

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/16 v4, 0x100

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 66
    const-string v1, "Road"

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    .line 69
    invoke-static {}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v1

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 85
    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getBingKey()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-object v0
.end method

.method private getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 10

    .line 228
    const-string v0, "end getMetaData"

    .line 0
    const-string v1, "make request "

    .line 228
    const-string v2, "getMetaData"

    const-string v3, "OsmDroid"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 237
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "https://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&uriScheme=https&key=%s"

    iget-object v6, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 238
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentHttpHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v5

    invoke-interface {v5}, Lorg/osmdroid/config/IConfigurationProvider;->getUserAgentValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->getAdditionalHttpRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 245
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get response for url "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    move-object v5, v1

    move-object v6, v5

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 251
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    :try_start_3
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    :try_start_4
    invoke-static {v1, v6}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 254
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 256
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaData;->getInstanceFromJSON(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_1
    if-eqz v4, :cond_2

    .line 263
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 265
    invoke-static {v3, v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 269
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 271
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 275
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 277
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    .line 281
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    .line 283
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :cond_5
    :goto_5
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    goto/16 :goto_d

    :catchall_0
    move-exception v2

    move-object v9, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_6

    :catch_4
    move-exception v7

    move-object v9, v4

    move-object v4, v1

    move-object v1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    goto/16 :goto_8

    :catchall_1
    move-exception v6

    move-object v9, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v2

    :goto_6
    move-object v2, v9

    goto/16 :goto_e

    :catch_5
    move-exception v6

    move-object v7, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v2

    goto :goto_8

    :catchall_2
    move-exception v5

    move-object v6, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v6

    goto/16 :goto_e

    :catch_6
    move-exception v5

    move-object v6, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v2

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v5, v2

    move-object v6, v5

    move-object v2, v4

    move-object v4, v6

    goto :goto_e

    :catch_7
    move-exception v1

    move-object v6, v2

    move-object v7, v6

    move-object v5, v4

    move-object v4, v7

    goto :goto_8

    :catchall_4
    move-exception v1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    goto :goto_e

    :catch_8
    move-exception v1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_7
    move-object v7, v6

    .line 259
    :goto_8
    :try_start_9
    const-string v8, "Error getting imagery meta data"

    invoke-static {v3, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v5, :cond_6

    .line 263
    :try_start_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    .line 265
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 269
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    .line 271
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_a
    if-eqz v6, :cond_8

    .line 275
    :try_start_c
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    .line 277
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_b
    if-eqz v7, :cond_9

    .line 281
    :try_start_d
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    .line 283
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :cond_9
    :goto_c
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-object v2

    :catchall_5
    move-exception v1

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    :goto_e
    if-eqz v2, :cond_a

    .line 263
    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_f

    :catch_d
    move-exception v2

    .line 265
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_f
    if-eqz v4, :cond_b

    .line 269
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_10

    :catch_e
    move-exception v2

    .line 271
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_10
    if-eqz v5, :cond_c

    .line 275
    :try_start_10
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_11

    :catch_f
    move-exception v2

    .line 277
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_11
    if-eqz v6, :cond_d

    .line 281
    :try_start_11
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_12

    :catch_10
    move-exception v2

    .line 283
    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :cond_d
    :goto_12
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    throw v1
.end method

.method public static retrieveBingKey(Landroid/content/Context;)V
    .locals 1

    .line 98
    const-string v0, "BING_KEY"

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-void
.end method

.method public static setBingKey(Ljava/lang/String;)V
    .locals 0

    .line 106
    sput-object p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBingMapKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightNotice()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumZoomLevel()I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    return v0
.end method

.method public getMinimumZoomLevel()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    return v0
.end method

.method public bridge synthetic getStyle()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getTileSizePixels()I
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    return v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->quadTree(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_1

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-boolean v0, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->getMetaData()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 216
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->updateBaseUrl()V

    .line 219
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 221
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    return-object v0
.end method

.method public pathBase()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->setStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    monitor-enter v0

    const/4 v1, 0x0

    .line 185
    :try_start_0
    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    .line 188
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 190
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mStyle:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->pathBase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mName:Ljava/lang/String;

    return-void
.end method

.method protected updateBaseUrl()V
    .locals 7

    .line 295
    const-string v0, "updateBaseUrl"

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getSubDomain()Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 299
    iget-object v4, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v4, v4, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 304
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mImageryData:Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 306
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mBaseUrl:Ljava/lang/String;

    .line 307
    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    iget-object v5, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mLocale:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    const-string v0, "%s"

    aput-object v0, v6, v4

    const/4 v0, 0x2

    aput-object v5, v6, v0

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    .line 309
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updated url = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/bing/BingMapTileSource;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v0, "end updateBaseUrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
