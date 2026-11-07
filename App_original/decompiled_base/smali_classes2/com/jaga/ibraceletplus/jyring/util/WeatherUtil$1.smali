.class Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;
.super Ljava/lang/Object;
.source "WeatherUtil.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

.field final synthetic val$specialData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->val$specialData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 86
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 89
    const-string v3, "daily"

    const-string v0, "cod"

    const-string/jumbo v4, "temp"

    const-string v5, "current"

    .line 0
    const-string v6, "getWeatherData error code: "

    .line 89
    iget-object v7, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getWeatherData: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 104
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v14, 0xff

    .line 119
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v16, 0x1

    :try_start_1
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->val$specialData:Ljava/lang/String;

    invoke-direct {v15, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v9, :cond_0

    .line 121
    :try_start_2
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v17, 0x2

    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "message"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v17, 0x2

    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/16 v18, 0x3

    goto/16 :goto_6

    :cond_0
    const/16 v17, 0x2

    .line 125
    :try_start_4
    const-string v0, "data"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 126
    const-string v6, "aqi"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v9, 0x32

    if-gt v6, v9, :cond_1

    const/4 v14, 0x0

    goto :goto_2

    :cond_1
    const/16 v10, 0x64

    if-le v6, v9, :cond_2

    if-gt v6, v10, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/16 v9, 0x96

    if-le v6, v10, :cond_3

    if-gt v6, v9, :cond_3

    const/4 v14, 0x2

    goto :goto_2

    :cond_3
    const/16 v10, 0xc8

    if-le v6, v9, :cond_4

    if-gt v6, v10, :cond_4

    const/4 v14, 0x3

    goto :goto_2

    :cond_4
    const/16 v9, 0x12c

    if-le v6, v10, :cond_5

    if-gt v6, v9, :cond_5

    const/4 v14, 0x4

    goto :goto_2

    :cond_5
    if-le v6, v9, :cond_6

    const/4 v14, 0x5

    .line 142
    :cond_6
    :goto_2
    :try_start_5
    const-string v9, "forecast"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    const-string v9, "pm25"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v9, 0x0

    .line 145
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 146
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 147
    const-string v15, "avg"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v18, 0x3

    .line 148
    :try_start_6
    const-string v11, "day"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 150
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_7
    const/16 v18, 0x3

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    const/16 v16, 0x1

    :goto_4
    const/16 v17, 0x2

    :goto_5
    const/16 v18, 0x3

    const/4 v6, 0x0

    .line 153
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 156
    :goto_7
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "aqi: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", airQuality: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 158
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 160
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 163
    :try_start_7
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v15, 0x0

    const/16 v30, 0x4

    .line 165
    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v15, v12, :cond_a

    .line 166
    new-instance v12, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;

    invoke-direct {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;-><init>()V

    .line 167
    const-string v13, "lat"
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_9

    move-object/from16 v33, v9

    :try_start_8
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->setCoordLat(D)V

    .line 168
    const-string v8, "lon"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->setCoordLon(D)V

    .line 169
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->setMainTemp(D)V

    .line 170
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 171
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v13, "min"

    move/from16 v25, v14

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->setMainTempMin(D)V

    .line 172
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v13, "max"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->setMainTempMax(D)V

    if-nez v15, :cond_8

    .line 174
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 176
    :cond_8
    iget-object v9, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    const-string/jumbo v13, "weather"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v9, v13}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$000(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;I)I

    move-result v9

    invoke-virtual {v12, v9}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->setWeatherId(I)V

    .line 177
    const-string/jumbo v9, "uvi"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->setUvi(D)V

    .line 179
    invoke-virtual {v11, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v8, 0x5

    .line 180
    invoke-virtual {v11, v8, v15}, Ljava/util/Calendar;->add(II)V

    .line 181
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 182
    invoke-virtual {v10, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_9

    .line 187
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v26, v14

    goto :goto_9

    :cond_9
    const/16 v26, 0x0

    .line 189
    :goto_9
    new-instance v19, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getDt()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getWeatherId()I

    move-result v21

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getWeatherId()I

    move-result v22

    .line 190
    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getMainTempMin()D

    move-result-wide v13

    double-to-int v8, v13

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getMainTempMax()D

    move-result-wide v13

    double-to-int v13, v13

    move-object v14, v3

    .line 191
    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getUvi()D

    move-result-wide v2

    double-to-int v2, v2

    move/from16 v27, v2

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getMainTemp()D

    move-result-wide v2

    double-to-int v2, v2

    move/from16 v29, v2

    move/from16 v28, v6

    move/from16 v23, v8

    move/from16 v20, v9

    move/from16 v24, v13

    invoke-direct/range {v19 .. v29}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;-><init>(IIIIIIIIII)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v2, v19

    move-object/from16 v3, v33

    .line 193
    :try_start_9
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    const-string/jumbo v6, "weather info[%d] %d-%d-%d-%d-%d-%d-%d-%d-%d-%d"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v4

    move-object v13, v5

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getDt()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getWeatherId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getWeatherId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    .line 196
    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getMainTempMin()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v22, v4

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getMainTempMax()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 197
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getUvi()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v27, v4

    move-object/from16 v29, v5

    invoke-virtual {v12}, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->getMainTemp()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v32, 0x0

    aput-object v8, v5, v32

    aput-object v20, v5, v16

    aput-object v21, v5, v17

    aput-object v19, v5, v18

    aput-object v22, v5, v30

    const/16 v31, 0x5

    aput-object v24, v5, v31

    const/4 v8, 0x6

    aput-object v26, v5, v8

    const/4 v8, 0x7

    aput-object v23, v5, v8

    const/16 v8, 0x8

    aput-object v27, v5, v8

    const/16 v8, 0x9

    aput-object v29, v5, v8

    const/16 v8, 0xa

    aput-object v4, v5, v8

    .line 195
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    move-object v4, v9

    move-object v5, v13

    move/from16 v6, v28

    move-object v9, v3

    move-object v3, v14

    move/from16 v14, v25

    goto/16 :goto_8

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v3, v33

    goto :goto_a

    :cond_a
    move-object v3, v9

    goto :goto_b

    :catch_9
    move-exception v0

    move-object v3, v9

    .line 201
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 203
    :goto_b
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$100(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, v1, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$1;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$100(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;->getCurrentWeather(Ljava/util/ArrayList;)V

    :cond_b
    return-void
.end method
