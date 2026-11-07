.class Lcom/qiniu/android/transaction/TransactionManager$1;
.super Ljava/util/TimerTask;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/transaction/TransactionManager;->createTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/transaction/TransactionManager;


# direct methods
.method constructor <init>(Lcom/qiniu/android/transaction/TransactionManager;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/qiniu/android/transaction/TransactionManager$1;->this$0:Lcom/qiniu/android/transaction/TransactionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager$1;->this$0:Lcom/qiniu/android/transaction/TransactionManager;

    invoke-static {v0}, Lcom/qiniu/android/transaction/TransactionManager;->access$100(Lcom/qiniu/android/transaction/TransactionManager;)V

    return-void
.end method
