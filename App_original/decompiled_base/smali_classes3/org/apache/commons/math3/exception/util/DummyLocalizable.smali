.class public Lorg/apache/commons/math3/exception/util/DummyLocalizable;
.super Ljava/lang/Object;
.source "DummyLocalizable.java"

# interfaces
.implements Lorg/apache/commons/math3/exception/util/Localizable;


# static fields
.field private static final serialVersionUID:J = 0x7ab9a053a77cdca3L


# instance fields
.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/commons/math3/exception/util/DummyLocalizable;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p1, p0, Lorg/apache/commons/math3/exception/util/DummyLocalizable;->source:Ljava/lang/String;

    return-object p1
.end method

.method public getSourceString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/DummyLocalizable;->source:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/DummyLocalizable;->source:Ljava/lang/String;

    return-object v0
.end method
