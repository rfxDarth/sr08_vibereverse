.class Lno/nordicsemi/android/dfu/DfuBaseService$2;
.super Landroid/content/BroadcastReceiver;
.source "DfuBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/dfu/DfuBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    .line 677
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 680
    const-string p1, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 695
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$4(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    .line 696
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$5(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    .line 699
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 700
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 699
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 687
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$4(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    .line 690
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 691
    :try_start_1
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$3(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 690
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 684
    :cond_2
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$2;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$4(Lno/nordicsemi/android/dfu/DfuBaseService;Z)V

    return-void
.end method
