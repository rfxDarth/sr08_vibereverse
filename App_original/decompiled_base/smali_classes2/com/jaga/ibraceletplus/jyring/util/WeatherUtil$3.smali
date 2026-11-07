.class Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;
.super Ljava/lang/Object;
.source "WeatherUtil.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherSpecialData(Ljava/lang/String;DD)V
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

.field final synthetic val$lat:D

.field final synthetic val$lon:D


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    iput-wide p2, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->val$lat:D

    iput-wide p4, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->val$lon:D

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

    .line 226
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWeatherSpecialData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    iget-wide v3, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->val$lat:D

    iget-wide v5, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$3;->val$lon:D

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeather(DDLjava/lang/String;)V

    return-void
.end method
