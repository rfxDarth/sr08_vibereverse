.class Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$1;
.super Ljava/lang/Object;
.source "ContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

.field final synthetic val$holder:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$1;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$1;->val$holder:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$1;->this$0:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;->access$000(Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter;)Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$DeleteItemListener;

    move-result-object p1

    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$1;->val$holder:Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$ViewHolder;->getContactId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/jaga/ibraceletplus/jyring/adapter/ContactAdapter$DeleteItemListener;->onDelete(I)V

    return-void
.end method
