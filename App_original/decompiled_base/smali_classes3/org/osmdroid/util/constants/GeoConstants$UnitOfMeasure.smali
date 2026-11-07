.class public final enum Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
.super Ljava/lang/Enum;
.source "GeoConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/constants/GeoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitOfMeasure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

.field public static final enum statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;


# instance fields
.field private final mConversionFactorToMeters:D

.field private final mStringResId:I


# direct methods
.method private static synthetic $values()[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
    .locals 3

    const/4 v0, 0x5

    .line 21
    new-array v0, v0, [Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    sget-object v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 22
    new-instance v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sget v5, Lorg/osmdroid/library/R$string;->format_distance_only_meter:I

    const-string v1, "meter"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->meter:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    .line 23
    new-instance v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-wide v4, 0x408f400000000000L    # 1000.0

    sget v6, Lorg/osmdroid/library/R$string;->format_distance_only_kilometer:I

    const-string v2, "kilometer"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v1, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->kilometer:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    .line 24
    new-instance v2, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-wide v5, 0x409925604189374cL    # 1609.344

    sget v7, Lorg/osmdroid/library/R$string;->format_distance_only_mile:I

    const-string v3, "statuteMile"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v2, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->statuteMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    .line 25
    new-instance v3, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-wide v6, 0x409cf00000000000L    # 1852.0

    sget v8, Lorg/osmdroid/library/R$string;->format_distance_only_nautical_mile:I

    const-string v4, "nauticalMile"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v3, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->nauticalMile:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    .line 26
    new-instance v4, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    const-wide v7, 0x3fd381d7db752e6eL    # 0.304799999536704

    sget v9, Lorg/osmdroid/library/R$string;->format_distance_only_foot:I

    const-string v5, "foot"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v9}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;-><init>(Ljava/lang/String;IDI)V

    sput-object v4, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->foot:Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    .line 21
    invoke-static {}, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->$values()[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->$VALUES:[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-wide p3, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mConversionFactorToMeters:D

    .line 33
    iput p5, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mStringResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
    .locals 1

    .line 21
    const-class v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;
    .locals 1

    .line 21
    sget-object v0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->$VALUES:[Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    invoke-virtual {v0}, [Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;

    return-object v0
.end method


# virtual methods
.method public getConversionFactorToMeters()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mConversionFactorToMeters:D

    return-wide v0
.end method

.method public getStringResId()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/osmdroid/util/constants/GeoConstants$UnitOfMeasure;->mStringResId:I

    return v0
.end method
