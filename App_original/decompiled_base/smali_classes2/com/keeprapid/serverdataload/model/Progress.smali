.class public Lcom/keeprapid/serverdataload/model/Progress;
.super Ljava/lang/Object;
.source "Progress.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
.end annotation


# static fields
.field public static final STATE_BEGIN:I = 0x0

.field public static final STATE_FINISH:I = 0x1


# instance fields
.field public end:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public mid:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public start:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public state:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        id = true
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/keeprapid/serverdataload/model/Progress;->mid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/keeprapid/serverdataload/model/Progress;->mid:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/keeprapid/serverdataload/model/Progress;->type:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/keeprapid/serverdataload/model/Progress;->start:I

    .line 34
    iput p4, p0, Lcom/keeprapid/serverdataload/model/Progress;->end:I

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/keeprapid/serverdataload/model/Progress;->time:J

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/keeprapid/serverdataload/model/Progress;->state:I

    return-void
.end method
