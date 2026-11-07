.class public Lcom/jaga/ibraceletplus/jyring/util/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field private static final RECENT_ACTIVITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 10
    const-string v0, "com.android.systemui.recents.RecentsActivity"

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/AndroidUtils;->RECENT_ACTIVITY:Ljava/lang/String;

    return-void

    .line 12
    :cond_0
    const-string v0, "com.android.systemui.recent.RecentsActivity"

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/util/AndroidUtils;->RECENT_ACTIVITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRecentActivity(Ljava/lang/String;)Z
    .locals 1

    .line 19
    sget-object v0, Lcom/jaga/ibraceletplus/jyring/util/AndroidUtils;->RECENT_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
