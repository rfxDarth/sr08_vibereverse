.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$10;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2418
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$10;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2422
    const-string v0, "Test"

    const-string v1, "Blood sugar test stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain$10;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->access$3300(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Z)Z

    return-void
.end method
