.class public Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;
.super Ljava/lang/Object;
.source "WeatherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;
    }
.end annotation


# static fields
.field public static final WEATHER_TYPE_CLEAR:B = 0x1t

.field public static final WEATHER_TYPE_CLOUDY:B = 0x3t

.field public static final WEATHER_TYPE_DRIZZLE:B = 0x4t

.field public static final WEATHER_TYPE_FLOG:B = 0xct

.field public static final WEATHER_TYPE_GALE:B = 0x12t

.field public static final WEATHER_TYPE_HAIL:B = 0xdt

.field public static final WEATHER_TYPE_HAILRAIN:B = 0xet

.field public static final WEATHER_TYPE_HEAVYGALE:B = 0x13t

.field public static final WEATHER_TYPE_HEAVYRAIN:B = 0x6t

.field public static final WEATHER_TYPE_HEAVYSNOW:B = 0xat

.field public static final WEATHER_TYPE_HEAVYTHONDERSTORM:B = 0x16t

.field public static final WEATHER_TYPE_LIGHTSNOW:B = 0x8t

.field public static final WEATHER_TYPE_RAIN:B = 0x5t

.field public static final WEATHER_TYPE_SAND:B = 0xft

.field public static final WEATHER_TYPE_SNOW:B = 0x9t

.field public static final WEATHER_TYPE_SNOWRAIN:B = 0xbt

.field public static final WEATHER_TYPE_STORM:B = 0x10t

.field public static final WEATHER_TYPE_THONDERSTORM:B = 0x15t

.field public static final WEATHER_TYPE_THUNDERRAIN:B = 0x7t

.field public static final WEATHER_TYPE_TORNADO:B = 0x14t

.field public static final WEATHER_TYPE_UNKWON:B = 0x0t

.field public static final WEATHER_TYPE_WIND:B = 0x11t


# instance fields
.field private API_KEY:Ljava/lang/String;

.field private final API_WEATHER:Ljava/lang/String;

.field private final API_WEATHER_AQI:Ljava/lang/String;

.field private final API_WEATHER_FORCAST:Ljava/lang/String;

.field private final API_WEATHER_SPECIAL:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private onWeatherListener:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;

.field private queue:Lcom/android/volley/RequestQueue;

.field private retryGetAqiTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "http://api.openweathermap.org/data/2.5/weather?units=metric"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_WEATHER:Ljava/lang/String;

    .line 36
    const-string v0, "http://api.openweathermap.org/data/2.5/onecall?units=metric"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_WEATHER_FORCAST:Ljava/lang/String;

    .line 37
    const-string v0, "http://api.openweathermap.org/data/2.5/air_pollution?"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_WEATHER_AQI:Ljava/lang/String;

    .line 38
    const-string v0, "https://api.waqi.info/feed/geo:%s;%s/?token=0b94731c9428eccb6a21ca9ab52a58bf6a3f8995"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_WEATHER_SPECIAL:Ljava/lang/String;

    .line 62
    const-string v0, "357e248a6873302426f1ccdcf258e0c9"

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->queue:Lcom/android/volley/RequestQueue;

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->retryGetAqiTimes:I

    .line 67
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->context:Landroid/content/Context;

    .line 68
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->queue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;I)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherCode(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->onWeatherListener:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;Ljava/lang/String;DD)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherSpecialData(Ljava/lang/String;DD)V

    return-void
.end method

.method static synthetic access$300(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->retryGetAqiTimes:I

    return p0
.end method

.method static synthetic access$302(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->retryGetAqiTimes:I

    return p1
.end method

.method static synthetic access$308(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->retryGetAqiTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->retryGetAqiTimes:I

    return v0
.end method

.method private getWeatherCode(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/16 p1, 0xd

    return p1

    :sswitch_1
    const/16 p1, 0x10

    return p1

    :sswitch_2
    const/4 p1, 0x3

    return p1

    :sswitch_3
    const/4 p1, 0x1

    return p1

    :sswitch_4
    const/16 p1, 0x14

    return p1

    :sswitch_5
    const/16 p1, 0xf

    return p1

    :sswitch_6
    const/16 p1, 0xc

    return p1

    :sswitch_7
    const/16 p1, 0xb

    return p1

    :sswitch_8
    const/16 p1, 0xa

    return p1

    :sswitch_9
    const/16 p1, 0x9

    return p1

    :sswitch_a
    const/4 p1, 0x6

    return p1

    :sswitch_b
    const/4 p1, 0x5

    return p1

    :sswitch_c
    const/4 p1, 0x4

    return p1

    :sswitch_d
    const/16 p1, 0x16

    return p1

    :sswitch_e
    const/16 p1, 0x15

    return p1

    :sswitch_f
    const/4 p1, 0x7

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_f
        0xca -> :sswitch_f
        0xd2 -> :sswitch_e
        0xd3 -> :sswitch_e
        0xd4 -> :sswitch_d
        0xdd -> :sswitch_d
        0xe6 -> :sswitch_f
        0xe7 -> :sswitch_f
        0xe8 -> :sswitch_f
        0x12c -> :sswitch_c
        0x12d -> :sswitch_c
        0x12e -> :sswitch_c
        0x136 -> :sswitch_c
        0x137 -> :sswitch_c
        0x138 -> :sswitch_c
        0x139 -> :sswitch_c
        0x13a -> :sswitch_c
        0x141 -> :sswitch_c
        0x1f4 -> :sswitch_b
        0x1f5 -> :sswitch_b
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_a
        0x1f8 -> :sswitch_a
        0x1ff -> :sswitch_b
        0x208 -> :sswitch_b
        0x209 -> :sswitch_b
        0x20a -> :sswitch_b
        0x213 -> :sswitch_b
        0x258 -> :sswitch_9
        0x259 -> :sswitch_9
        0x25a -> :sswitch_8
        0x263 -> :sswitch_7
        0x264 -> :sswitch_7
        0x267 -> :sswitch_7
        0x268 -> :sswitch_7
        0x26c -> :sswitch_7
        0x26d -> :sswitch_7
        0x26e -> :sswitch_7
        0x2bd -> :sswitch_6
        0x2c7 -> :sswitch_6
        0x2d1 -> :sswitch_6
        0x2db -> :sswitch_5
        0x2e5 -> :sswitch_6
        0x2ef -> :sswitch_5
        0x2f9 -> :sswitch_5
        0x2fa -> :sswitch_5
        0x303 -> :sswitch_4
        0x30d -> :sswitch_4
        0x320 -> :sswitch_3
        0x321 -> :sswitch_2
        0x322 -> :sswitch_2
        0x323 -> :sswitch_2
        0x324 -> :sswitch_2
        0x384 -> :sswitch_4
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x38a -> :sswitch_0
        0x3be -> :sswitch_0
        0x3bf -> :sswitch_0
    .end sparse-switch
.end method

.method private getWeatherData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 82
    const-string v0, "call getWeatherData"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "specialData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&appid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v1, "API_KEY"

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getRunningData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getWeatherData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;

    invoke-direct {v1, p0, p2}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;-><init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;Ljava/lang/String;)V

    new-instance p2, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$2;

    invoke-direct {p2, p0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$2;-><init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 213
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private getWeatherSpecialData(Ljava/lang/String;DD)V
    .locals 9

    .line 225
    const-string v0, "call getWeatherSpecialData"

    invoke-virtual {p0, v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;-><init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;DD)V

    new-instance v2, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    move-wide v7, v5

    move-wide v5, v3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;-><init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;Ljava/lang/String;DD)V

    move-object p1, v2

    move-object v2, v3

    const/4 p2, 0x0

    invoke-direct {v0, v4, p2, v1, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 252
    iget-object p1, v2, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public getAPI_KEY()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather(DDLjava/lang/String;)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.openweathermap.org/data/2.5/onecall?units=metric&lat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&lon="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-direct {p0, p1, p5}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getWeatherSpecial(DD)V
    .locals 11

    .line 257
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%.7f"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    aput-object v0, v4, v1

    const-string v0, "https://api.waqi.info/feed/geo:%s;%s/?token=0b94731c9428eccb6a21ca9ab52a58bf6a3f8995"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, p0

    move-wide v7, p1

    move-wide v9, p3

    .line 258
    invoke-direct/range {v5 .. v10}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherSpecialData(Ljava/lang/String;DD)V

    return-void
.end method

.method public saveLog(Ljava/lang/String;)V
    .locals 5

    .line 390
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->context:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/CheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->context:Landroid/content/Context;

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

    invoke-static {v0, p1, v2, v1}, Lcom/jaga/ibraceletplus/jyring/util/SysUtil;->writeTxtToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAPI_KEY(Ljava/lang/String;)V
    .locals 2

    .line 76
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->API_KEY:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->getInstance()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object v0

    const-string v1, "API_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setOnWeatherListener(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->onWeatherListener:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;

    return-void
.end method
