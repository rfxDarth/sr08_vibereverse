.class public final Lcom/qiniu/android/common/FixedZone;
.super Lcom/qiniu/android/common/Zone;
.source "FixedZone.java"


# static fields
.field public static final zone0:Lcom/qiniu/android/common/Zone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zone1:Lcom/qiniu/android/common/Zone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zone2:Lcom/qiniu/android/common/Zone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zoneAs0:Lcom/qiniu/android/common/Zone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zoneCnEast2:Lcom/qiniu/android/common/Zone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zoneNa0:Lcom/qiniu/android/common/Zone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private zonesInfo:Lcom/qiniu/android/common/ZonesInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string/jumbo v1, "upload.qiniup.com"

    const-string/jumbo v2, "up.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upload.qbox.me"

    const-string/jumbo v3, "up.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "z0"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zone0:Lcom/qiniu/android/common/Zone;

    .line 34
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string/jumbo v1, "upload-cn-east-2.qiniup.com"

    const-string/jumbo v2, "up-cn-east-2.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "cn-east-2"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zoneCnEast2:Lcom/qiniu/android/common/Zone;

    .line 44
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string/jumbo v1, "upload-z1.qiniup.com"

    const-string/jumbo v2, "up-z1.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upload-z1.qbox.me"

    const-string/jumbo v3, "up-z1.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "z1"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zone1:Lcom/qiniu/android/common/Zone;

    .line 54
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string/jumbo v1, "upload-z2.qiniup.com"

    const-string/jumbo v2, "up-z2.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upload-z2.qbox.me"

    const-string/jumbo v3, "up-z2.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "z2"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zone2:Lcom/qiniu/android/common/Zone;

    .line 64
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string/jumbo v1, "upload-na0.qiniup.com"

    const-string/jumbo v2, "up-na0.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upload-na0.qbox.me"

    const-string/jumbo v3, "up-na0.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "na0"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zoneNa0:Lcom/qiniu/android/common/Zone;

    .line 74
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    const-string/jumbo v1, "upload-as0.qiniup.com"

    const-string/jumbo v2, "up-as0.qiniup.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "upload-as0.qbox.me"

    const-string/jumbo v3, "up-as0.qbox.me"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "as0"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/common/FixedZone;->zoneAs0:Lcom/qiniu/android/common/Zone;

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/common/ZoneInfo;)V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p1, Lcom/qiniu/android/common/ZonesInfo;

    invoke-direct {p1, v0}, Lcom/qiniu/android/common/ZonesInfo;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/common/ZonesInfo;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0, p2}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/qiniu/android/common/FixedZone;->createZonesInfo([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qiniu/android/common/FixedZone;->createZonesInfo([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-void
.end method

.method public static combineZones([Lcom/qiniu/android/common/FixedZone;)Lcom/qiniu/android/common/FixedZone;
    .locals 5

    if-eqz p0, :cond_3

    .line 123
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 129
    iget-object v4, v3, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 130
    iget-object v3, v3, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    iget-object v3, v3, Lcom/qiniu/android/common/ZonesInfo;->zonesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_2
    new-instance p0, Lcom/qiniu/android/common/ZonesInfo;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/qiniu/android/common/ZonesInfo;-><init>(Ljava/util/List;Z)V

    .line 135
    new-instance v0, Lcom/qiniu/android/common/FixedZone;

    invoke-direct {v0, p0}, Lcom/qiniu/android/common/FixedZone;-><init>(Lcom/qiniu/android/common/ZonesInfo;)V

    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createWithRegionId(Ljava/lang/String;)Lcom/qiniu/android/common/FixedZone;
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".qiniup.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "up-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/qiniu/android/common/FixedZone;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0}, Lcom/qiniu/android/common/FixedZone;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private createZonesInfo([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/qiniu/android/common/FixedZone;->createZonesInfo([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    return-object p1
.end method

.method private createZonesInfo([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 204
    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p2, :cond_6

    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 212
    array-length v4, p1

    if-lez v4, :cond_2

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 215
    array-length p1, p2

    if-lez p1, :cond_3

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 218
    array-length p1, p3

    if-lez p1, :cond_4

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    :cond_4
    invoke-static {v1, v2, v3, p4}, Lcom/qiniu/android/common/ZoneInfo;->buildInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v0

    .line 226
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance p1, Lcom/qiniu/android/common/ZonesInfo;

    invoke-direct {p1, p2}, Lcom/qiniu/android/common/ZonesInfo;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static localsZoneInfo()Lcom/qiniu/android/common/FixedZone;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    sget-object v0, Lcom/qiniu/android/common/FixedZone;->zone0:Lcom/qiniu/android/common/Zone;

    check-cast v0, Lcom/qiniu/android/common/FixedZone;

    sget-object v1, Lcom/qiniu/android/common/FixedZone;->zoneCnEast2:Lcom/qiniu/android/common/Zone;

    check-cast v1, Lcom/qiniu/android/common/FixedZone;

    sget-object v2, Lcom/qiniu/android/common/FixedZone;->zone1:Lcom/qiniu/android/common/Zone;

    check-cast v2, Lcom/qiniu/android/common/FixedZone;

    sget-object v3, Lcom/qiniu/android/common/FixedZone;->zone2:Lcom/qiniu/android/common/Zone;

    check-cast v3, Lcom/qiniu/android/common/FixedZone;

    sget-object v4, Lcom/qiniu/android/common/FixedZone;->zoneNa0:Lcom/qiniu/android/common/Zone;

    check-cast v4, Lcom/qiniu/android/common/FixedZone;

    sget-object v5, Lcom/qiniu/android/common/FixedZone;->zoneAs0:Lcom/qiniu/android/common/Zone;

    check-cast v5, Lcom/qiniu/android/common/FixedZone;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/qiniu/android/common/FixedZone;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 109
    invoke-static {v6}, Lcom/qiniu/android/common/FixedZone;->combineZones([Lcom/qiniu/android/common/FixedZone;)Lcom/qiniu/android/common/FixedZone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, v0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    invoke-virtual {v1}, Lcom/qiniu/android/common/ZonesInfo;->toTemporary()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getZonesInfo(Lcom/qiniu/android/storage/UpToken;)Lcom/qiniu/android/common/ZonesInfo;
    .locals 0

    .line 234
    iget-object p1, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    return-object p1
.end method

.method public preQuery(Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 240
    invoke-interface {p2, p1, v0, v0}, Lcom/qiniu/android/common/Zone$QueryHandler;->complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    :cond_0
    return-void
.end method

.method public query(Lcom/qiniu/android/storage/Configuration;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/common/Zone$QueryHandlerV2;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 247
    invoke-static {}, Lcom/qiniu/android/http/ResponseInfo;->successResponse()Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/qiniu/android/common/FixedZone;->zonesInfo:Lcom/qiniu/android/common/ZonesInfo;

    invoke-interface {p3, p1, p2, v0}, Lcom/qiniu/android/common/Zone$QueryHandlerV2;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lcom/qiniu/android/common/ZonesInfo;)V

    :cond_0
    return-void
.end method
