.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;
.super Lcom/google/android/gms/location/LocationCallback;
.source "DupMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->createLocationCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1856
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 8

    .line 1859
    invoke-super {p0, p1}, Lcom/google/android/gms/location/LocationCallback;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    .line 1861
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v1, "onLocationResult"

    invoke-virtual {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1202(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 1863
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 1864
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1865
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1300(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    .line 1866
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    return-void

    .line 1869
    :cond_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1500(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    .line 1871
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1872
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1873
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lat "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " lon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p1, v6, v7}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Ljava/lang/String;Z)V

    .line 1874
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onLocationChanged "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmpl-double p1, v2, v6

    if-eqz p1, :cond_1

    cmpl-double p1, v4, v6

    if-eqz p1, :cond_1

    .line 1877
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v6, "Latitude"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1878
    invoke-static {}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$300()Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;

    move-result-object p1

    const-string v2, "Longitude"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/jaga/ibraceletplus/jyring/IBraceletplusSQLiteHelper;->addRunningData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1879
    new-instance p1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    iget-object v2, v2, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->gpsUploadRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1880
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1, v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1302(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;J)J

    .line 1881
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V

    return-void

    .line 1883
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$29;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const-string v0, "can not get location info now."

    invoke-virtual {p1, v0}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->saveLog(Ljava/lang/String;)V

    return-void
.end method
