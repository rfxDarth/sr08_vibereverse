.class public Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;
.super Ljava/lang/Object;
.source "ConvertUtil.java"


# static fields
.field private static hmLatitude:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static hmLongitude:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static tag:Ljava/lang/String; = "ConvertUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 691
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil$1;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil$1;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->hmLatitude:Ljava/util/HashMap;

    .line 946
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil$2;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil$2;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->hmLongitude:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Bit2Byte(Ljava/lang/String;)B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v3, :cond_3

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 90
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    add-int/lit16 p0, p0, -0x100

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static byte2Bit(B)Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0x7

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x2

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x1

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byte2int([B)I
    .locals 3

    const/4 v0, 0x0

    .line 113
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static formatCalor(I)Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ",##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-float p0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    float-to-double v1, p0

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%1$02d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%2$02d"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    div-int/lit8 v1, p0, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCalorie(FF)F
    .locals 0

    mul-float p0, p0, p1

    const p1, 0x3f19999a    # 0.6f

    mul-float p0, p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getCalorie3(FF)F
    .locals 0

    mul-float p0, p0, p1

    const p1, 0x3f333333    # 0.7f

    mul-float p0, p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getDistance(IF)F
    .locals 0

    float-to-int p1, p1

    .line 375
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getStride(I)I

    move-result p1

    mul-int p0, p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getDistance2(IF)F
    .locals 0

    float-to-int p1, p1

    .line 380
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getStride(I)I

    move-result p1

    mul-int p0, p0, p1

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    const/high16 p1, 0x41c80000    # 25.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getDistance3(IF)F
    .locals 0

    float-to-int p1, p1

    .line 385
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getStride(I)I

    move-result p1

    mul-int p0, p0, p1

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    const/high16 p1, 0x42000000    # 32.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    div-float/2addr p0, p1

    return p0
.end method

.method public static getFahrenheit(F)F
    .locals 1

    const/high16 v0, 0x41100000    # 9.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x42000000    # 32.0f

    add-float/2addr p0, v0

    return p0
.end method

.method public static getModeClient(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v1, 0x4

    if-eq p0, v1, :cond_8

    const/4 v1, 0x5

    if-eq p0, v1, :cond_7

    const/16 v1, 0x8

    if-eq p0, v1, :cond_6

    const/16 v1, 0xa

    if-eq p0, v1, :cond_5

    const/16 v1, 0x4b3

    if-eq p0, v1, :cond_4

    const/16 v1, 0xc

    if-eq p0, v1, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    return p0

    :pswitch_0
    const/16 p0, 0xef

    return p0

    :pswitch_1
    const/16 p0, 0xee

    return p0

    :pswitch_2
    const/16 p0, 0xed

    return p0

    :pswitch_3
    const/16 p0, 0xec

    return p0

    :pswitch_4
    const/16 p0, 0xeb

    return p0

    :pswitch_5
    const/16 p0, 0xea

    return p0

    :pswitch_6
    const/16 p0, 0xe9

    return p0

    :pswitch_7
    const/16 p0, 0xe8

    return p0

    :pswitch_8
    const/16 p0, 0xe7

    return p0

    :pswitch_9
    const/16 p0, 0xe6

    return p0

    :pswitch_a
    const/16 p0, 0xe5

    return p0

    :pswitch_b
    const/16 p0, 0xe4

    return p0

    :pswitch_c
    const/16 p0, 0xe3

    return p0

    :pswitch_d
    const/16 p0, 0xe2

    return p0

    :pswitch_e
    const/16 p0, 0xe1

    return p0

    :pswitch_f
    const/16 p0, 0xe0

    return p0

    :pswitch_10
    const/16 p0, 0xdf

    return p0

    :pswitch_11
    const/16 p0, 0xde

    return p0

    :pswitch_12
    const/16 p0, 0xdd

    return p0

    :pswitch_13
    const/16 p0, 0xdc

    return p0

    :pswitch_14
    const/16 p0, 0xdb

    return p0

    :pswitch_15
    const/16 p0, 0xd9

    return p0

    :pswitch_16
    const/16 p0, 0xd8

    return p0

    :pswitch_17
    const/16 p0, 0xd7

    return p0

    :pswitch_18
    const/16 p0, 0xd6

    return p0

    :pswitch_19
    const/16 p0, 0xd5

    return p0

    :pswitch_1a
    const/16 p0, 0xd4

    return p0

    :pswitch_1b
    const/16 p0, 0xd3

    return p0

    :pswitch_1c
    const/16 p0, 0xd2

    return p0

    :pswitch_1d
    const/16 p0, 0xd1

    return p0

    :pswitch_1e
    const/16 p0, 0xd0

    return p0

    :pswitch_1f
    const/16 p0, 0xcf

    return p0

    :pswitch_20
    const/16 p0, 0xce

    return p0

    :pswitch_21
    const/16 p0, 0xcd

    return p0

    :pswitch_22
    const/16 p0, 0xcc

    return p0

    :pswitch_23
    const/16 p0, 0xcb

    return p0

    :pswitch_24
    const/16 p0, 0xca

    return p0

    :pswitch_25
    const/16 p0, 0xc9

    return p0

    :pswitch_26
    const/16 p0, 0xc8

    return p0

    :pswitch_27
    const/16 p0, 0xc7

    return p0

    :pswitch_28
    const/16 p0, 0xc6

    return p0

    :pswitch_29
    const/16 p0, 0xc5

    return p0

    :pswitch_2a
    const/16 p0, 0xc4

    return p0

    :pswitch_2b
    const/16 p0, 0xc3

    return p0

    :pswitch_2c
    const/16 p0, 0xc2

    return p0

    :pswitch_2d
    const/16 p0, 0xc1

    return p0

    :pswitch_2e
    const/16 p0, 0xc0

    return p0

    :pswitch_2f
    const/16 p0, 0xbf

    return p0

    :pswitch_30
    const/16 p0, 0xbe

    return p0

    :pswitch_31
    const/16 p0, 0xbd

    return p0

    :pswitch_32
    const/16 p0, 0xbc

    return p0

    :pswitch_33
    const/16 p0, 0xbb

    return p0

    :pswitch_34
    const/16 p0, 0xba

    return p0

    :pswitch_35
    const/16 p0, 0xb9

    return p0

    :pswitch_36
    const/16 p0, 0xb8

    return p0

    :pswitch_37
    const/16 p0, 0xb7

    return p0

    :pswitch_38
    const/16 p0, 0xb6

    return p0

    :pswitch_39
    const/16 p0, 0xb5

    return p0

    :pswitch_3a
    const/16 p0, 0xb4

    return p0

    :pswitch_3b
    const/16 p0, 0xb3

    return p0

    :pswitch_3c
    const/16 p0, 0xb2

    return p0

    :pswitch_3d
    const/16 p0, 0xb1

    return p0

    :pswitch_3e
    const/16 p0, 0xb0

    return p0

    :pswitch_3f
    const/16 p0, 0xaf

    return p0

    :pswitch_40
    const/16 p0, 0xae

    return p0

    :pswitch_41
    const/16 p0, 0xad

    return p0

    :pswitch_42
    const/16 p0, 0xac

    return p0

    :pswitch_43
    const/16 p0, 0xab

    return p0

    :pswitch_44
    const/16 p0, 0xaa

    return p0

    :pswitch_45
    const/16 p0, 0xa9

    return p0

    :pswitch_46
    const/16 p0, 0xa8

    return p0

    :pswitch_47
    const/16 p0, 0xa7

    return p0

    :pswitch_48
    const/16 p0, 0xa6

    return p0

    :pswitch_49
    const/16 p0, 0xa5

    return p0

    :pswitch_4a
    const/16 p0, 0xa4

    return p0

    :pswitch_4b
    const/16 p0, 0xa3

    return p0

    :pswitch_4c
    const/16 p0, 0xa2

    return p0

    :pswitch_4d
    const/16 p0, 0xa1

    return p0

    :pswitch_4e
    const/16 p0, 0xa0

    return p0

    :pswitch_4f
    const/16 p0, 0x9f

    return p0

    :pswitch_50
    const/16 p0, 0x9e

    return p0

    :pswitch_51
    const/16 p0, 0x9d

    return p0

    :pswitch_52
    const/16 p0, 0x9c

    return p0

    :pswitch_53
    const/16 p0, 0x9b

    return p0

    :pswitch_54
    const/16 p0, 0x9a

    return p0

    :pswitch_55
    const/16 p0, 0x99

    return p0

    :pswitch_56
    const/16 p0, 0x98

    return p0

    :pswitch_57
    const/16 p0, 0x97

    return p0

    :pswitch_58
    const/16 p0, 0x96

    return p0

    :pswitch_59
    const/16 p0, 0x95

    return p0

    :pswitch_5a
    const/16 p0, 0x94

    return p0

    :pswitch_5b
    const/16 p0, 0x93

    return p0

    :pswitch_5c
    const/16 p0, 0x92

    return p0

    :pswitch_5d
    const/16 p0, 0x91

    return p0

    :pswitch_5e
    const/16 p0, 0x90

    return p0

    :pswitch_5f
    const/16 p0, 0x8f

    return p0

    :pswitch_60
    const/16 p0, 0x8e

    return p0

    :pswitch_61
    const/16 p0, 0x8d

    return p0

    :pswitch_62
    const/16 p0, 0x8c

    return p0

    :pswitch_63
    const/16 p0, 0x8b

    return p0

    :pswitch_64
    const/16 p0, 0x8a

    return p0

    :pswitch_65
    const/16 p0, 0x89

    return p0

    :pswitch_66
    const/16 p0, 0x88

    return p0

    :pswitch_67
    const/16 p0, 0x87

    return p0

    :pswitch_68
    const/16 p0, 0x86

    return p0

    :pswitch_69
    const/16 p0, 0x85

    return p0

    :pswitch_6a
    const/16 p0, 0x84

    return p0

    :pswitch_6b
    const/16 p0, 0x83

    return p0

    :pswitch_6c
    const/16 p0, 0x82

    return p0

    :pswitch_6d
    const/16 p0, 0x81

    return p0

    :pswitch_6e
    const/16 p0, 0x80

    return p0

    :pswitch_6f
    const/16 p0, 0x7f

    return p0

    :pswitch_70
    const/16 p0, 0x7e

    return p0

    :pswitch_71
    const/16 p0, 0x7d

    return p0

    :pswitch_72
    const/16 p0, 0x7c

    return p0

    :pswitch_73
    const/16 p0, 0x7b

    return p0

    :pswitch_74
    const/16 p0, 0x7a

    return p0

    :pswitch_75
    const/16 p0, 0x79

    return p0

    :pswitch_76
    const/16 p0, 0x78

    return p0

    :pswitch_77
    const/16 p0, 0x77

    return p0

    :pswitch_78
    const/16 p0, 0x76

    return p0

    :pswitch_79
    const/16 p0, 0x75

    return p0

    :pswitch_7a
    const/16 p0, 0x74

    return p0

    :pswitch_7b
    const/16 p0, 0x73

    return p0

    :pswitch_7c
    const/16 p0, 0x65

    return p0

    :pswitch_7d
    const/16 p0, 0x6f

    return p0

    :pswitch_7e
    const/16 p0, 0x71

    return p0

    :cond_0
    const/16 p0, 0x6a

    return p0

    :cond_1
    const/16 p0, 0x6b

    return p0

    :cond_2
    const/16 p0, 0x6e

    return p0

    :cond_3
    return v0

    :cond_4
    const/16 p0, 0xda

    return p0

    :cond_5
    const/16 p0, 0x69

    return p0

    :cond_6
    const/16 p0, 0x68

    return p0

    :cond_7
    const/16 p0, 0x6d

    return p0

    :cond_8
    const/16 p0, 0x6c

    return p0

    :cond_9
    const/16 p0, 0x67

    return p0

    :cond_a
    const/16 p0, 0x66

    return p0

    :cond_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x450
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getModeServer(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    return p0

    :pswitch_0
    const/16 p0, 0x464

    return p0

    :pswitch_1
    const/16 p0, 0x463

    return p0

    :pswitch_2
    const/16 p0, 0x462

    return p0

    :pswitch_3
    const/16 p0, 0x461

    return p0

    :pswitch_4
    const/16 p0, 0x460

    return p0

    :pswitch_5
    const/16 p0, 0x45f

    return p0

    :pswitch_6
    const/16 p0, 0x45e

    return p0

    :pswitch_7
    const/16 p0, 0x45d

    return p0

    :pswitch_8
    const/16 p0, 0x45c

    return p0

    :pswitch_9
    const/16 p0, 0x45b

    return p0

    :pswitch_a
    const/16 p0, 0x45a

    return p0

    :pswitch_b
    const/16 p0, 0x459

    return p0

    :pswitch_c
    const/16 p0, 0x458

    return p0

    :pswitch_d
    const/16 p0, 0x457

    return p0

    :pswitch_e
    const/16 p0, 0x456

    return p0

    :pswitch_f
    const/16 p0, 0x455

    return p0

    :pswitch_10
    const/16 p0, 0x454

    return p0

    :pswitch_11
    const/16 p0, 0x453

    return p0

    :pswitch_12
    const/16 p0, 0x452

    return p0

    :pswitch_13
    const/16 p0, 0x451

    return p0

    :pswitch_14
    const/16 p0, 0x450

    return p0

    :pswitch_15
    const/16 p0, 0x4b3

    return p0

    :pswitch_16
    const/16 p0, 0x44e

    return p0

    :pswitch_17
    const/16 p0, 0x44d

    return p0

    :pswitch_18
    const/16 p0, 0x44c

    return p0

    :pswitch_19
    const/16 p0, 0x44b

    return p0

    :pswitch_1a
    const/16 p0, 0x44a

    return p0

    :pswitch_1b
    const/16 p0, 0x449

    return p0

    :pswitch_1c
    const/16 p0, 0x448

    return p0

    :pswitch_1d
    const/16 p0, 0x447

    return p0

    :pswitch_1e
    const/16 p0, 0x446

    return p0

    :pswitch_1f
    const/16 p0, 0x445

    return p0

    :pswitch_20
    const/16 p0, 0x444

    return p0

    :pswitch_21
    const/16 p0, 0x443

    return p0

    :pswitch_22
    const/16 p0, 0x442

    return p0

    :pswitch_23
    const/16 p0, 0x441

    return p0

    :pswitch_24
    const/16 p0, 0x440

    return p0

    :pswitch_25
    const/16 p0, 0x43f

    return p0

    :pswitch_26
    const/16 p0, 0x43e

    return p0

    :pswitch_27
    const/16 p0, 0x43d

    return p0

    :pswitch_28
    const/16 p0, 0x43c

    return p0

    :pswitch_29
    const/16 p0, 0x43b

    return p0

    :pswitch_2a
    const/16 p0, 0x43a

    return p0

    :pswitch_2b
    const/16 p0, 0x439

    return p0

    :pswitch_2c
    const/16 p0, 0x438

    return p0

    :pswitch_2d
    const/16 p0, 0x437

    return p0

    :pswitch_2e
    const/16 p0, 0x436

    return p0

    :pswitch_2f
    const/16 p0, 0x435

    return p0

    :pswitch_30
    const/16 p0, 0x434

    return p0

    :pswitch_31
    const/16 p0, 0x433

    return p0

    :pswitch_32
    const/16 p0, 0x432

    return p0

    :pswitch_33
    const/16 p0, 0x431

    return p0

    :pswitch_34
    const/16 p0, 0x430

    return p0

    :pswitch_35
    const/16 p0, 0x42f

    return p0

    :pswitch_36
    const/16 p0, 0x42e

    return p0

    :pswitch_37
    const/16 p0, 0x42d

    return p0

    :pswitch_38
    const/16 p0, 0x42c

    return p0

    :pswitch_39
    const/16 p0, 0x42b

    return p0

    :pswitch_3a
    const/16 p0, 0x42a

    return p0

    :pswitch_3b
    const/16 p0, 0x429

    return p0

    :pswitch_3c
    const/16 p0, 0x428

    return p0

    :pswitch_3d
    const/16 p0, 0x427

    return p0

    :pswitch_3e
    const/16 p0, 0x426

    return p0

    :pswitch_3f
    const/16 p0, 0x425

    return p0

    :pswitch_40
    const/16 p0, 0x424

    return p0

    :pswitch_41
    const/16 p0, 0x423

    return p0

    :pswitch_42
    const/16 p0, 0x422

    return p0

    :pswitch_43
    const/16 p0, 0x421

    return p0

    :pswitch_44
    const/16 p0, 0x420

    return p0

    :pswitch_45
    const/16 p0, 0x41f

    return p0

    :pswitch_46
    const/16 p0, 0x41e

    return p0

    :pswitch_47
    const/16 p0, 0x41d

    return p0

    :pswitch_48
    const/16 p0, 0x41c

    return p0

    :pswitch_49
    const/16 p0, 0x41b

    return p0

    :pswitch_4a
    const/16 p0, 0x41a

    return p0

    :pswitch_4b
    const/16 p0, 0x419

    return p0

    :pswitch_4c
    const/16 p0, 0x418

    return p0

    :pswitch_4d
    const/16 p0, 0x417

    return p0

    :pswitch_4e
    const/16 p0, 0x416

    return p0

    :pswitch_4f
    const/16 p0, 0x415

    return p0

    :pswitch_50
    const/16 p0, 0x414

    return p0

    :pswitch_51
    const/16 p0, 0x413

    return p0

    :pswitch_52
    const/16 p0, 0x412

    return p0

    :pswitch_53
    const/16 p0, 0x411

    return p0

    :pswitch_54
    const/16 p0, 0x410

    return p0

    :pswitch_55
    const/16 p0, 0x40f

    return p0

    :pswitch_56
    const/16 p0, 0x40e

    return p0

    :pswitch_57
    const/16 p0, 0x40d

    return p0

    :pswitch_58
    const/16 p0, 0x40c

    return p0

    :pswitch_59
    const/16 p0, 0x40b

    return p0

    :pswitch_5a
    const/16 p0, 0x40a

    return p0

    :pswitch_5b
    const/16 p0, 0x409

    return p0

    :pswitch_5c
    const/16 p0, 0x408

    return p0

    :pswitch_5d
    const/16 p0, 0x407

    return p0

    :pswitch_5e
    const/16 p0, 0x406

    return p0

    :pswitch_5f
    const/16 p0, 0x405

    return p0

    :pswitch_60
    const/16 p0, 0x404

    return p0

    :pswitch_61
    const/16 p0, 0x403

    return p0

    :pswitch_62
    const/16 p0, 0x402

    return p0

    :pswitch_63
    const/16 p0, 0x401

    return p0

    :pswitch_64
    const/16 p0, 0x400

    return p0

    :pswitch_65
    const/16 p0, 0x3ff

    return p0

    :pswitch_66
    const/16 p0, 0x3fe

    return p0

    :pswitch_67
    const/16 p0, 0x3fd

    return p0

    :pswitch_68
    const/16 p0, 0x3fc

    return p0

    :pswitch_69
    const/16 p0, 0x3fb

    return p0

    :pswitch_6a
    const/16 p0, 0x3fa

    return p0

    :pswitch_6b
    const/16 p0, 0x3f9

    return p0

    :pswitch_6c
    const/16 p0, 0x3f8

    return p0

    :pswitch_6d
    const/16 p0, 0x3f7

    return p0

    :pswitch_6e
    const/16 p0, 0x3f6

    return p0

    :pswitch_6f
    const/16 p0, 0x3f5

    return p0

    :pswitch_70
    const/16 p0, 0x3f4

    return p0

    :pswitch_71
    const/16 p0, 0x3f3

    return p0

    :pswitch_72
    const/16 p0, 0x3f2

    return p0

    :pswitch_73
    const/16 p0, 0x3f1

    return p0

    :pswitch_74
    const/16 p0, 0x3f0

    return p0

    :pswitch_75
    const/16 p0, 0x3ef

    return p0

    :pswitch_76
    const/16 p0, 0x3ee

    return p0

    :pswitch_77
    const/16 p0, 0x3ed

    return p0

    :pswitch_78
    const/16 p0, 0x3ec

    return p0

    :pswitch_79
    const/16 p0, 0x3eb

    return p0

    :pswitch_7a
    const/16 p0, 0x3ea

    return p0

    :pswitch_7b
    const/16 p0, 0x3e9

    return p0

    :pswitch_7c
    const/16 p0, 0x3e8

    return p0

    :pswitch_7d
    const/4 p0, 0x6

    return p0

    :pswitch_7e
    const/16 p0, 0x13

    return p0

    :pswitch_7f
    const/16 p0, 0x14

    return p0

    :pswitch_80
    const/16 p0, 0xd

    return p0

    :pswitch_81
    const/4 p0, 0x5

    return p0

    :pswitch_82
    const/4 p0, 0x4

    return p0

    :pswitch_83
    const/16 p0, 0x10

    return p0

    :pswitch_84
    const/16 p0, 0x11

    return p0

    :pswitch_85
    const/16 p0, 0xa

    return p0

    :pswitch_86
    const/16 p0, 0x8

    return p0

    :pswitch_87
    return v1

    :pswitch_88
    return v0

    :pswitch_89
    const/16 p0, 0x15

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x71
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNationLatitude(Ljava/lang/String;)D
    .locals 2

    .line 941
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->hmLatitude:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->hmLatitude:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getNationLongitude(Ljava/lang/String;)D
    .locals 2

    .line 1198
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->hmLatitude:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->hmLongitude:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getStride(I)I
    .locals 1

    const/16 v0, 0x32

    if-ge p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xe6

    if-le p0, v0, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    rem-int/lit8 v0, p0, 0xa

    if-eqz v0, :cond_2

    .line 264
    div-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 266
    :cond_2
    div-int/lit8 p0, p0, 0xa

    :goto_0
    mul-int/lit8 v0, p0, 0xa

    :goto_1
    const/16 p0, 0x3e

    sparse-switch v0, :sswitch_data_0

    return p0

    :sswitch_0
    const/16 p0, 0x56

    return p0

    :sswitch_1
    const/16 p0, 0x52

    return p0

    :sswitch_2
    const/16 p0, 0x4e

    return p0

    :sswitch_3
    const/16 p0, 0x4a

    return p0

    :sswitch_4
    const/16 p0, 0x46

    return p0

    :sswitch_5
    const/16 p0, 0x42

    :sswitch_6
    return p0

    :sswitch_7
    const/16 p0, 0x3b

    return p0

    :sswitch_8
    const/16 p0, 0x37

    return p0

    :sswitch_9
    const/16 p0, 0x33

    return p0

    :sswitch_a
    const/16 p0, 0x30

    return p0

    :sswitch_b
    const/16 p0, 0x2c

    return p0

    :sswitch_c
    const/16 p0, 0x28

    return p0

    :sswitch_d
    const/16 p0, 0x25

    return p0

    :sswitch_e
    const/16 p0, 0x21

    return p0

    :sswitch_f
    const/16 p0, 0x1d

    return p0

    :sswitch_10
    const/16 p0, 0x19

    return p0

    :sswitch_11
    const/16 p0, 0x16

    return p0

    :sswitch_12
    const/16 p0, 0x14

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_12
        0x3c -> :sswitch_11
        0x46 -> :sswitch_10
        0x50 -> :sswitch_f
        0x5a -> :sswitch_e
        0x64 -> :sswitch_d
        0x6e -> :sswitch_c
        0x78 -> :sswitch_b
        0x82 -> :sswitch_a
        0x8c -> :sswitch_9
        0x96 -> :sswitch_8
        0xa0 -> :sswitch_7
        0xaa -> :sswitch_6
        0xb4 -> :sswitch_5
        0xbe -> :sswitch_4
        0xc8 -> :sswitch_3
        0xd2 -> :sswitch_2
        0xdc -> :sswitch_1
        0xe6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getWeekArray(I)[Z
    .locals 6

    int-to-byte p0, p0

    .line 218
    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->byte2Bit(B)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 221
    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v3

    sub-int v5, v1, v3

    .line 223
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getWeekCode([Z)I
    .locals 5

    .line 230
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    const-string v3, "0"

    if-ge v1, v2, :cond_1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-boolean v4, p0, v1

    if-eqz v4, :cond_0

    const-string v3, "1"

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->Bit2Byte(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method public static getWeekText([Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    .line 240
    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    .line 241
    new-array v2, v0, [Z

    fill-array-data v2, :array_1

    .line 242
    invoke-static {p0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    aget-object p0, p1, v0

    return-object p0

    .line 244
    :cond_0
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    .line 245
    aget-object p0, p1, p0

    return-object p0

    .line 247
    :cond_1
    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 248
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_2

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public static hexStr2Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    new-array v1, p0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 130
    aget-char v4, v0, v3

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v3, v3, 0x1

    .line 131
    aget-char v3, v0, v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    .line 132
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static hexToByte(Ljava/lang/String;)B
    .locals 1

    const/16 v0, 0x10

    .line 158
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 6

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 172
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 176
    :cond_0
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v5, v3, 0x2

    .line 180
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->hexToByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v4

    add-int/2addr v4, v2

    move v3, v5

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static hexToDecimal(Ljava/lang/String;)I
    .locals 2

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    :try_start_0
    const-string v0, "^0[x|X]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static int2byte(I)[B
    .locals 5

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v3, 0x4

    .line 107
    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static macIdToMacString(J)Ljava/lang/String;
    .locals 0

    .line 188
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseAscii(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 57
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 58
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->toHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 197
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 209
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    div-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_0

    .line 45
    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->toHexUtil(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->toHex(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    rem-int/lit8 p0, p0, 0x10

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->toHexUtil(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toHexUtil(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_0
    const-string p0, "F"

    return-object p0

    .line 24
    :pswitch_1
    const-string p0, "E"

    return-object p0

    .line 23
    :pswitch_2
    const-string p0, "D"

    return-object p0

    .line 22
    :pswitch_3
    const-string p0, "C"

    return-object p0

    .line 21
    :pswitch_4
    const-string p0, "B"

    return-object p0

    .line 20
    :pswitch_5
    const-string p0, "A"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
