.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15$1;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->onGranted(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2122
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2125
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15$1;->this$1:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting$15;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;->access$2700(Lcom/jaga/ibraceletplus/jyring/main/FragmentSetting;)V

    return-void
.end method
