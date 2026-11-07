.class public Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator$QuickGenerator;
.super Ljava/lang/Object;
.source "QiniuTokenGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static simpleToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 82
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;

    invoke-direct {v0, p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-wide/16 p1, 0xe10

    .line 83
    invoke-virtual {v0, p0, p1, p2, p0}, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;->generateUploadToken(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static tokenWithReturnBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 91
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;

    invoke-direct {v0, p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-wide/16 p1, 0xe10

    .line 92
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/util/QiniuTokenGenerator;->generateUploadToken(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
