.class public final enum Lcom/king/zxing/camera/FrontLightMode;
.super Ljava/lang/Enum;
.source "FrontLightMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/king/zxing/camera/FrontLightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/king/zxing/camera/FrontLightMode;

.field public static final enum AUTO:Lcom/king/zxing/camera/FrontLightMode;

.field public static final enum OFF:Lcom/king/zxing/camera/FrontLightMode;

.field public static final enum ON:Lcom/king/zxing/camera/FrontLightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lcom/king/zxing/camera/FrontLightMode;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/king/zxing/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/king/zxing/camera/FrontLightMode;->ON:Lcom/king/zxing/camera/FrontLightMode;

    .line 33
    new-instance v1, Lcom/king/zxing/camera/FrontLightMode;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/king/zxing/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/king/zxing/camera/FrontLightMode;->AUTO:Lcom/king/zxing/camera/FrontLightMode;

    .line 35
    new-instance v3, Lcom/king/zxing/camera/FrontLightMode;

    const-string v5, "OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/king/zxing/camera/FrontLightMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/king/zxing/camera/FrontLightMode;->OFF:Lcom/king/zxing/camera/FrontLightMode;

    const/4 v5, 0x3

    .line 28
    new-array v5, v5, [Lcom/king/zxing/camera/FrontLightMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/king/zxing/camera/FrontLightMode;->$VALUES:[Lcom/king/zxing/camera/FrontLightMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static parse(Ljava/lang/String;)Lcom/king/zxing/camera/FrontLightMode;
    .locals 0

    if-nez p0, :cond_0

    .line 38
    sget-object p0, Lcom/king/zxing/camera/FrontLightMode;->AUTO:Lcom/king/zxing/camera/FrontLightMode;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/king/zxing/camera/FrontLightMode;->valueOf(Ljava/lang/String;)Lcom/king/zxing/camera/FrontLightMode;

    move-result-object p0

    return-object p0
.end method

.method public static put(Landroid/content/Context;Lcom/king/zxing/camera/FrontLightMode;)V
    .locals 1

    .line 46
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "preferences_front_light_mode"

    invoke-virtual {p1}, Lcom/king/zxing/camera/FrontLightMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static readPref(Landroid/content/SharedPreferences;)Lcom/king/zxing/camera/FrontLightMode;
    .locals 2

    .line 42
    sget-object v0, Lcom/king/zxing/camera/FrontLightMode;->AUTO:Lcom/king/zxing/camera/FrontLightMode;

    invoke-virtual {v0}, Lcom/king/zxing/camera/FrontLightMode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preferences_front_light_mode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/camera/FrontLightMode;->parse(Ljava/lang/String;)Lcom/king/zxing/camera/FrontLightMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/king/zxing/camera/FrontLightMode;
    .locals 1

    .line 28
    const-class v0, Lcom/king/zxing/camera/FrontLightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/king/zxing/camera/FrontLightMode;

    return-object p0
.end method

.method public static values()[Lcom/king/zxing/camera/FrontLightMode;
    .locals 1

    .line 28
    sget-object v0, Lcom/king/zxing/camera/FrontLightMode;->$VALUES:[Lcom/king/zxing/camera/FrontLightMode;

    invoke-virtual {v0}, [Lcom/king/zxing/camera/FrontLightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/king/zxing/camera/FrontLightMode;

    return-object v0
.end method
