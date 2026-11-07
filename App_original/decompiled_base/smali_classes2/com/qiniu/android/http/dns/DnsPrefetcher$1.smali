.class Lcom/qiniu/android/http/dns/DnsPrefetcher$1;
.super Ljava/lang/Object;
.source "DnsPrefetcher.java"

# interfaces
.implements Lcom/qiniu/android/common/Zone$QueryHandlerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/dns/DnsPrefetcher;->getCurrentZoneHosts(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/dns/DnsPrefetcher;

.field final synthetic val$wait:Lcom/qiniu/android/utils/Wait;

.field final synthetic val$zonesInfoArray:[Lcom/qiniu/android/common/ZonesInfo;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/dns/DnsPrefetcher;[Lcom/qiniu/android/common/ZonesInfo;Lcom/qiniu/android/utils/Wait;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;->this$0:Lcom/qiniu/android/http/dns/DnsPrefetcher;

    iput-object p2, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;->val$zonesInfoArray:[Lcom/qiniu/android/common/ZonesInfo;

    iput-object p3, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V
    .locals 0

    .line 461
    iget-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;->val$zonesInfoArray:[Lcom/qiniu/android/common/ZonesInfo;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    .line 462
    iget-object p1, p0, Lcom/qiniu/android/http/dns/DnsPrefetcher$1;->val$wait:Lcom/qiniu/android/utils/Wait;

    invoke-virtual {p1}, Lcom/qiniu/android/utils/Wait;->stopWait()V

    return-void
.end method
