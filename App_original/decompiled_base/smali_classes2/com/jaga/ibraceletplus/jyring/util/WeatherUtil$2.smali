.class Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$2;
.super Ljava/lang/Object;
.source "WeatherUtil.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$2;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$2;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$100(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$2;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$100(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;->getWeatherError(Lcom/android/volley/VolleyError;)V

    :cond_0
    return-void
.end method
