.class Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 0

    .line 273
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView$1;->this$0:Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;->access$000(Lcom/jaga/ibraceletplus/jyring/dslv/DragSortListView;)F

    move-result p2

    mul-float p2, p2, p1

    return p2
.end method
