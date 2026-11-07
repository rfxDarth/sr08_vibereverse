.class Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;
.super Ljava/lang/Object;
.source "EditlistActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DropListener;


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

    .line 104
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaga/ibraceletplus/jyring/bean/ListItem;

    .line 109
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->remove(I)V

    .line 110
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    invoke-static {v1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;)Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/jaga/ibraceletplus/jyring/adapter/EditListAdapter;->insert(Lcom/jaga/ibraceletplus/jyring/bean/ListItem;I)V

    .line 111
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/EditlistActivity;->editListView:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-virtual {v0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->moveCheckState(II)V

    :cond_0
    return-void
.end method
