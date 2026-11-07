.class Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;
.super Ljava/lang/Object;
.source "UploadDomainRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/serverRegion/UploadDomainRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadIpGroup"
.end annotation


# instance fields
.field private addressIndex:I

.field private final addressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final groupType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/qiniu/android/http/dns/IDnsNetworkAddress;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 536
    iput v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    .line 542
    iput-object p1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->groupType:Ljava/lang/String;

    .line 543
    iput-object p2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected getNetworkAddress()Lcom/qiniu/android/http/dns/IDnsNetworkAddress;
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    iget v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 551
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/qiniu/android/http/serverRegion/UploadDomainRegion$UploadIpGroup;->addressIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/http/dns/IDnsNetworkAddress;

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
