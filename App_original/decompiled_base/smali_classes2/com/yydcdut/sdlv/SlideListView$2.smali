.class Lcom/yydcdut/sdlv/SlideListView$2;
.super Ljava/lang/Object;
.source "SlideListView.java"

# interfaces
.implements Lcom/yydcdut/sdlv/Callback$OnItemLongClickListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yydcdut/sdlv/SlideListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yydcdut/sdlv/SlideListView;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/yydcdut/sdlv/SlideListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView$2;->this$0:Lcom/yydcdut/sdlv/SlideListView;

    iput-object p2, p0, Lcom/yydcdut/sdlv/SlideListView$2;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListItemLongClick(Landroid/view/View;I)V
    .locals 6

    .line 606
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView$2;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/yydcdut/sdlv/SlideListView$2;->this$0:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v1, p2}, Lcom/yydcdut/sdlv/SlideListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    return-void
.end method
