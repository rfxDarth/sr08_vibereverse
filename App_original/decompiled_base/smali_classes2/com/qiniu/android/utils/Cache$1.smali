.class Lcom/qiniu/android/utils/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/utils/Cache;->flush(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/utils/Cache;

.field final synthetic val$flushCache:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/qiniu/android/utils/Cache;Ljava/util/Map;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/qiniu/android/utils/Cache$1;->this$0:Lcom/qiniu/android/utils/Cache;

    iput-object p2, p0, Lcom/qiniu/android/utils/Cache$1;->val$flushCache:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/qiniu/android/utils/Cache$1;->this$0:Lcom/qiniu/android/utils/Cache;

    iget-object v1, p0, Lcom/qiniu/android/utils/Cache$1;->val$flushCache:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/qiniu/android/utils/Cache;->access$000(Lcom/qiniu/android/utils/Cache;Ljava/util/Map;)V

    return-void
.end method
