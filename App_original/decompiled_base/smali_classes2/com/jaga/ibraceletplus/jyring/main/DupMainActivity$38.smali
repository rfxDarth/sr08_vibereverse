.class Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$38;
.super Ljava/lang/Object;
.source "DupMainActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->setupTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2460
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$38;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 2463
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$38;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 2468
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity$38;->this$0:Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->access$2200(Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
