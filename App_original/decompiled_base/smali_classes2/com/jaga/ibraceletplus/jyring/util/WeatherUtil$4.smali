.class Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;
.super Ljava/lang/Object;
.source "WeatherUtil.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeatherSpecialData(Ljava/lang/String;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

.field final synthetic val$lat:D

.field final synthetic val$lon:D

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;Ljava/lang/String;DD)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 232
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$lat:D

    iput-wide p5, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$lon:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 235
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    const-string v0, "getWeatherSpecialData onErrorResponse"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 237
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;

    invoke-direct {v0, p0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;-><init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
