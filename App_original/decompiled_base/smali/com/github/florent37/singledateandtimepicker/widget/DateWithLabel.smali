.class public Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;
.super Ljava/lang/Object;
.source "DateWithLabel.java"


# instance fields
.field public final date:Ljava/util/Date;

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->date:Ljava/util/Date;

    if-eqz p2, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null value provided. label=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], date=["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 31
    instance-of v0, p1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;

    .line 33
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->date:Ljava/util/Date;

    iget-object p1, p1, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->date:Ljava/util/Date;

    invoke-static {v0, p1}, Lcom/github/florent37/singledateandtimepicker/DateHelper;->compareDateIgnoreTime(Ljava/util/Date;Ljava/util/Date;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/widget/DateWithLabel;->label:Ljava/lang/String;

    return-object v0
.end method
