.class Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;
.super Ljava/lang/Object;
.source "WeatherUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 240
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-object v2, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-wide v3, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$lat:D

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-wide v5, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$lon:D

    invoke-static/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$200(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;Ljava/lang/String;DD)V

    .line 241
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$300(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$302(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;I)I

    .line 243
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    const-string v1, "getWeatherSpecialData onErrorResponse so many times, using default 0xff value now."

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->saveLog(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-object v1, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-wide v2, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$lat:D

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-wide v4, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->val$lon:D

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->getWeather(DDLjava/lang/String;)V

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4$1;->this$1:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$4;->this$0:Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;->access$308(Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;)I

    return-void
.end method
