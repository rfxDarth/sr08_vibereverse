.class Lcom/qiniu/android/dns/dns/DnsResponse;
.super Lcom/qiniu/android/dns/dns/DnsMessage;
.source "DnsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;,
        Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;
    }
.end annotation


# instance fields
.field private aa:I

.field private additionalArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field

.field private answerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field

.field private authorityArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation
.end field

.field private rCode:I

.field private recordData:[B

.field private request:Lcom/qiniu/android/dns/dns/DnsRequest;

.field private server:Ljava/lang/String;

.field private source:I

.field private timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/qiniu/android/dns/dns/DnsRequest;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/qiniu/android/dns/dns/DnsMessage;-><init>()V

    if-eqz p4, :cond_0

    .line 27
    array-length v0, p4

    if-eqz v0, :cond_0

    .line 31
    iput-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->server:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->source:I

    .line 33
    iput-object p3, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->request:Lcom/qiniu/android/dns/dns/DnsRequest;

    .line 34
    iput-object p4, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->recordData:[B

    .line 35
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->timestamp:J

    .line 36
    invoke-direct {p0}, Lcom/qiniu/android/dns/dns/DnsResponse;->parse()V

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "response data is empty"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNameFrom(I)Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    new-instance v1, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;-><init>(Lcom/qiniu/android/dns/dns/DnsResponse$1;)V

    const/16 v3, 0x80

    move v4, p1

    .line 152
    :cond_0
    invoke-direct {p0, v4}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v5

    and-int/lit16 v6, v5, 0xc0

    const/16 v7, 0xc0

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    .line 155
    invoke-static {v1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$300(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;)I

    move-result v6

    if-ge v6, v8, :cond_1

    add-int/lit8 v6, v4, 0x2

    sub-int/2addr v6, p1

    .line 156
    invoke-static {v1, v6}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$302(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;I)I

    :cond_1
    and-int/lit8 v6, v5, 0x3f

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v4, 0x1

    .line 158
    invoke-direct {p0, v4}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v4

    or-int/2addr v4, v6

    goto :goto_0

    :cond_2
    if-lez v6, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-lez v5, :cond_5

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 168
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_4
    iget-object v6, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->recordData:[B

    add-int v7, v4, v5

    invoke-static {v6, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 172
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v7

    :cond_5
    :goto_0
    if-lez v5, :cond_6

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_0

    .line 177
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$902(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    invoke-static {v1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$300(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;)I

    move-result v0

    if-ge v0, v8, :cond_7

    sub-int/2addr v4, p1

    .line 179
    invoke-static {v1, v4}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$302(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;I)I

    :cond_7
    return-object v1
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->recordData:[B

    array-length v0, v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/qiniu/android/dns/dns/DnsResponse;->parseHeader()V

    .line 48
    invoke-direct {p0}, Lcom/qiniu/android/dns/dns/DnsResponse;->parseQuestion()I

    move-result v0

    .line 51
    new-instance v1, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v2

    const-string v3, "answer"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;-><init>(Ljava/lang/String;IILcom/qiniu/android/dns/dns/DnsResponse$1;)V

    .line 52
    invoke-direct {p0, v1}, Lcom/qiniu/android/dns/dns/DnsResponse;->parseResourceRecord(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)V

    .line 53
    invoke-static {v1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$100(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->answerArray:Ljava/util/List;

    .line 54
    invoke-static {v1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$200(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    new-instance v1, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v2

    const-string v3, "authority"

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;-><init>(Ljava/lang/String;IILcom/qiniu/android/dns/dns/DnsResponse$1;)V

    .line 58
    invoke-direct {p0, v1}, Lcom/qiniu/android/dns/dns/DnsResponse;->parseResourceRecord(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)V

    .line 59
    invoke-static {v1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$100(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->authorityArray:Ljava/util/List;

    .line 60
    invoke-static {v1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$200(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    new-instance v1, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v2

    const-string v3, "additional"

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;-><init>(Ljava/lang/String;IILcom/qiniu/android/dns/dns/DnsResponse$1;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/qiniu/android/dns/dns/DnsResponse;->parseResourceRecord(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)V

    .line 65
    invoke-static {v1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$100(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->additionalArray:Ljava/util/List;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "response data too small"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v0

    iput-short v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->messageId:S

    .line 72
    iget-short v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->messageId:S

    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->request:Lcom/qiniu/android/dns/dns/DnsRequest;

    iget-short v1, v1, Lcom/qiniu/android/dns/dns/DnsRequest;->messageId:S

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 78
    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v1

    .line 79
    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0x7

    .line 85
    iput v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->opCode:I

    shr-int/lit8 v0, v1, 0x2

    and-int/lit8 v0, v0, 0x1

    .line 86
    iput v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->aa:I

    and-int/lit8 v0, v1, 0x1

    .line 87
    iput v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->rd:I

    const/4 v0, 0x3

    .line 91
    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v0

    shr-int/lit8 v1, v0, 0x7

    and-int/lit8 v1, v1, 0x1

    .line 92
    iput v1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->ra:I

    and-int/lit8 v0, v0, 0xf

    .line 93
    iput v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->rCode:I

    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a response data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "question id error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseQuestion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 98
    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v1

    const/16 v2, 0xc

    :goto_0
    if-lez v1, :cond_1

    .line 100
    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/dns/DnsResponse;->getNameFrom(I)Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 105
    invoke-static {v3}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$300(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read Question error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2
.end method

.method private parseResourceRecord(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$400(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I

    move-result v0

    .line 113
    invoke-static {p1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$500(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_3

    .line 116
    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/dns/DnsResponse;->getNameFrom(I)Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 121
    invoke-static {v2}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$300(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;)I

    move-result v2

    add-int/2addr v0, v2

    .line 123
    invoke-direct {p0, v0}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v4

    add-int/lit8 v2, v0, 0x2

    .line 125
    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v2

    add-int/lit8 v3, v0, 0x4

    .line 127
    invoke-direct {p0, v3}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt32(I)I

    move-result v5

    add-int/lit8 v3, v0, 0x8

    .line 129
    invoke-direct {p0, v3}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt16(I)S

    move-result v10

    add-int/lit8 v0, v0, 0xa

    .line 131
    invoke-direct {p0, v4, v0, v10}, Lcom/qiniu/android/dns/dns/DnsResponse;->readData(III)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    const/4 v2, 0x5

    if-eq v4, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->request:Lcom/qiniu/android/dns/dns/DnsRequest;

    invoke-virtual {v2}, Lcom/qiniu/android/dns/dns/DnsRequest;->getRecordType()I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 134
    :cond_0
    new-instance v2, Lcom/qiniu/android/dns/Record;

    iget-wide v6, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->timestamp:J

    iget v8, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->source:I

    iget-object v9, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->server:Ljava/lang/String;

    invoke-direct/range {v2 .. v9}, Lcom/qiniu/android/dns/Record;-><init>(Ljava/lang/String;IIJILjava/lang/String;)V

    .line 135
    invoke-static {p1, v2}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$700(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;Lcom/qiniu/android/dns/Record;)V

    :cond_1
    add-int/2addr v0, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 118
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$600(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    invoke-static {p1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$400(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;->access$202(Lcom/qiniu/android/dns/dns/DnsResponse$RecordResource;I)I

    return-void
.end method

.method private readData(III)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/16 v1, 0x10

    if-eq p1, v1, :cond_3

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne p3, v1, :cond_7

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v1, :cond_2

    if-lez p3, :cond_1

    .line 203
    const-string v2, ":"

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p2, p3

    .line 204
    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 205
    invoke-direct {p0, v2}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-lez p3, :cond_7

    add-int/2addr p3, p2

    .line 219
    iget-object p1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->recordData:[B

    array-length v0, p1

    if-ge p3, v0, :cond_7

    .line 220
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 221
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 222
    invoke-static {p2}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-le p3, v0, :cond_7

    .line 213
    invoke-direct {p0, p2}, Lcom/qiniu/android/dns/dns/DnsResponse;->getNameFrom(I)Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;

    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;->access$900(Lcom/qiniu/android/dns/dns/DnsResponse$RecordName;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x4

    if-ne p3, p1, :cond_7

    .line 189
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-direct {p0, p2}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v0, p1, :cond_6

    .line 192
    const-string v1, "."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v1, p2, v0

    .line 193
    invoke-direct {p0, v1}, Lcom/qiniu/android/dns/dns/DnsResponse;->readRecordDataInt8(I)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 195
    :cond_6
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private readRecordDataInt16(I)S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 240
    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->recordData:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 243
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    .line 244
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    .line 241
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "read response data out of range"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readRecordDataInt32(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x3

    .line 249
    iget-object v1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->recordData:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 252
    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p1, 0x1

    .line 253
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 p1, p1, 0x2

    .line 254
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    .line 255
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    return v2

    .line 250
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "read response data out of range"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readRecordDataInt8(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->recordData:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 236
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 234
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "read response data out of range"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getAA()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->aa:I

    return v0
.end method

.method getAdditionalArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->additionalArray:Ljava/util/List;

    return-object v0
.end method

.method getAnswerArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->answerArray:Ljava/util/List;

    return-object v0
.end method

.method getAuthorityArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qiniu/android/dns/Record;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->authorityArray:Ljava/util/List;

    return-object v0
.end method

.method getRCode()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->rCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-short v1, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->messageId:S

    .line 283
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget v2, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->rd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->ra:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->aa:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->rCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->server:Ljava/lang/String;

    iget-object v7, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->request:Lcom/qiniu/android/dns/dns/DnsRequest;

    iget-object v8, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->answerArray:Ljava/util/List;

    iget-object v9, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->authorityArray:Ljava/util/List;

    iget-object v10, p0, Lcom/qiniu/android/dns/dns/DnsResponse;->additionalArray:Ljava/util/List;

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v1, 0x1

    aput-object v2, v11, v1

    const/4 v1, 0x2

    aput-object v3, v11, v1

    const/4 v1, 0x3

    aput-object v4, v11, v1

    const/4 v1, 0x4

    aput-object v5, v11, v1

    const/4 v1, 0x5

    aput-object v6, v11, v1

    const/4 v1, 0x6

    aput-object v7, v11, v1

    const/4 v1, 0x7

    aput-object v8, v11, v1

    const/16 v1, 0x8

    aput-object v9, v11, v1

    const/16 v1, 0x9

    aput-object v10, v11, v1

    .line 282
    const-string/jumbo v1, "{messageId:%d, rd:%d, ra:%d, aa:%d, rCode:%d, server:%s, request:%s, answerArray:%s, authorityArray:%s, additionalArray:%s}"

    invoke-static {v0, v1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
