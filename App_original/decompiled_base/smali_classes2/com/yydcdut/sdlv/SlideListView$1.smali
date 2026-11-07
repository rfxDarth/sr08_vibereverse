.class Lcom/yydcdut/sdlv/SlideListView$1;
.super Ljava/lang/Object;
.source "SlideListView.java"

# interfaces
.implements Lcom/yydcdut/sdlv/Callback$OnItemClickListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yydcdut/sdlv/SlideListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yydcdut/sdlv/SlideListView;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/yydcdut/sdlv/SlideListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/yydcdut/sdlv/SlideListView$1;->this$0:Lcom/yydcdut/sdlv/SlideListView;

    iput-object p2, p0, Lcom/yydcdut/sdlv/SlideListView$1;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListItemClick(Landroid/view/View;I)V
    .locals 6

    .line 592
    iget-object v0, p0, Lcom/yydcdut/sdlv/SlideListView$1;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/yydcdut/sdlv/SlideListView$1;->this$0:Lcom/yydcdut/sdlv/SlideListView;

    invoke-virtual {v1, p2}, Lcom/yydcdut/sdlv/SlideListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
