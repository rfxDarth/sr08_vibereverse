.class Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;
.super Ljava/lang/Object;
.source "RunRecordActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 222
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    const-string v0, "onServiceConnected"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    check-cast p2, Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/service/LocationService$LocationBinder;->getService()Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1102(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Lcom/jaga/ibraceletplus/jyring/service/LocationService;)Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    .line 224
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string p2, "FUNCTION_SPORT_FROM_APP"

    const-string v0, "false"

    invoke-virtual {p1, p2, v0}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 225
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    iget-object v1, p2, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->sharedPreferences:Lnet/grandcentrix/tray/AppPreferences;

    const-string v2, "FUNCTION_SHOW_SPORT_STEP"

    invoke-virtual {v1, v2, v0}, Lnet/grandcentrix/tray/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1202(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;Z)Z

    .line 226
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1100(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Lcom/jaga/ibraceletplus/jyring/service/LocationService;

    move-result-object p2

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1300(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;)Z

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/service/LocationService;->runStart(III)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;

    const-string v0, "onServiceDisconnected"

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/sport/RunRecordActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
