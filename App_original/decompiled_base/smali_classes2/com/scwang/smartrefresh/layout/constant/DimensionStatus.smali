.class public Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;
.super Ljava/lang/Object;
.source "DimensionStatus.java"


# static fields
.field public static final CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final DeadLock:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final DeadLockUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final Default:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlLayout:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlWrap:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field public static final values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;


# instance fields
.field public final notified:Z

.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 10
    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 11
    new-instance v2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v3}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->Default:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 12
    new-instance v4, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v4, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 13
    new-instance v6, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v3}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v6, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrap:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 14
    new-instance v8, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v9, 0x4

    invoke-direct {v8, v9, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v8, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 15
    new-instance v10, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v11, 0x5

    invoke-direct {v10, v11, v3}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v10, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 16
    new-instance v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v13, 0x6

    invoke-direct {v12, v13, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 17
    new-instance v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/4 v15, 0x7

    invoke-direct {v14, v15, v3}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayout:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v16, 0x2

    .line 18
    new-instance v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v17, 0x3

    const/16 v7, 0x8

    invoke-direct {v5, v7, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v18, 0x8

    .line 19
    new-instance v7, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v19, 0x4

    const/16 v9, 0x9

    invoke-direct {v7, v9, v3}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v7, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v20, 0x9

    .line 20
    new-instance v9, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v21, 0x5

    const/16 v11, 0xa

    invoke-direct {v9, v11, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v9, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DeadLockUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v22, 0x0

    .line 21
    new-instance v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-direct {v1, v11, v3}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;-><init>(IZ)V

    sput-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DeadLock:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/16 v23, 0x1

    const/16 v3, 0xc

    .line 26
    new-array v3, v3, [Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    aput-object v0, v3, v22

    aput-object v2, v3, v23

    aput-object v4, v3, v16

    aput-object v6, v3, v17

    aput-object v8, v3, v19

    aput-object v10, v3, v21

    aput-object v12, v3, v13

    aput-object v14, v3, v15

    aput-object v5, v3, v18

    aput-object v7, v3, v20

    aput-object v9, v3, v11

    const/16 v0, 0xb

    aput-object v1, v3, v0

    sput-object v3, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    .line 43
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    return-void
.end method


# virtual methods
.method public canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z
    .locals 2

    .line 78
    iget v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    iget p1, p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    if-lt v0, p1, :cond_2

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    if-ne v1, p0, :cond_1

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->values:[Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 53
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v1, :cond_0

    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    return-object v0

    :cond_1
    return-object p0
.end method
