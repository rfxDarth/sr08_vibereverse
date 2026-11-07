.class Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$3;
.super Ljava/lang/Object;
.source "EditlistActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->remove(I)V

    return-void
.end method
