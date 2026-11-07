.class public Lcom/qiniu/android/dns/local/Hosts$Value;
.super Ljava/lang/Object;
.source "Hosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/dns/local/Hosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field public final provider:I

.field public final record:Lcom/qiniu/android/dns/Record;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/Record;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/dns/local/Hosts$Value;-><init>(Lcom/qiniu/android/dns/Record;I)V

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/Record;I)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->record:Lcom/qiniu/android/dns/Record;

    .line 95
    iput p2, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 107
    :cond_0
    instance-of v1, p1, Lcom/qiniu/android/dns/local/Hosts$Value;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 111
    :cond_1
    check-cast p1, Lcom/qiniu/android/dns/local/Hosts$Value;

    .line 112
    iget-object v1, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->record:Lcom/qiniu/android/dns/Record;

    iget-object v3, p1, Lcom/qiniu/android/dns/local/Hosts$Value;->record:Lcom/qiniu/android/dns/Record;

    if-ne v1, v3, :cond_2

    return v0

    :cond_2
    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, v1, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/qiniu/android/dns/local/Hosts$Value;->record:Lcom/qiniu/android/dns/Record;

    iget-object v3, v3, Lcom/qiniu/android/dns/Record;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    iget p1, p1, Lcom/qiniu/android/dns/local/Hosts$Value;->provider:I

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v2
.end method
