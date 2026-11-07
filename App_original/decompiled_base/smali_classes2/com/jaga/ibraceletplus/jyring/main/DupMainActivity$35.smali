.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->sendWeather()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

.field final synthetic val$latitude:Ljava/lang/Double;

.field final synthetic val$longitude:Ljava/lang/Double;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/Double;Ljava/lang/Double;)V
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

    .line 2107
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->val$latitude:Ljava/lang/Double;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->val$longitude:Ljava/lang/Double;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentWeather(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;)V"
        }
    .end annotation

    .line 2117
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2119
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v2, "WeatherInfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2120
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 2121
    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2122
    iget-object v3, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saved json is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 2123
    const-string v3, "lWeatherJson"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2124
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->val$latitude:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "latitude"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2125
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->val$longitude:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "longitude"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2126
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "timestamp"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2127
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2129
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$35;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2100(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getWeatherError(Lcom/android/volley/VolleyError;)V
    .locals 0

    return-void
.end method
