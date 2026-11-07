.class final Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/common/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/common/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/google/zxing/common/InactivityTimer;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/common/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/common/InactivityTimer;Lcom/google/zxing/common/InactivityTimer$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/common/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 115
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    const-string p1, "plugged"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/common/InactivityTimer;

    invoke-virtual {p1}, Lcom/google/zxing/common/InactivityTimer;->onActivity()V

    return-void

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/google/zxing/common/InactivityTimer$PowerStatusReceiver;->this$0:Lcom/google/zxing/common/InactivityTimer;

    invoke-static {p1}, Lcom/google/zxing/common/InactivityTimer;->access$200(Lcom/google/zxing/common/InactivityTimer;)V

    :cond_1
    return-void
.end method
