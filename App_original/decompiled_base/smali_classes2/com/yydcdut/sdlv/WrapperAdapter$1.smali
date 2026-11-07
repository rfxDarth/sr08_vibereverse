.class Lcom/yydcdut/sdlv/WrapperAdapter$1;
.super Landroid/database/DataSetObserver;
.source "WrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yydcdut/sdlv/WrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yydcdut/sdlv/WrapperAdapter;


# direct methods
.method constructor <init>(Lcom/yydcdut/sdlv/WrapperAdapter;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/yydcdut/sdlv/WrapperAdapter$1;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 114
    iget-object v0, p0, Lcom/yydcdut/sdlv/WrapperAdapter$1;->this$0:Lcom/yydcdut/sdlv/WrapperAdapter;

    invoke-virtual {v0}, Lcom/yydcdut/sdlv/WrapperAdapter;->returnSlideItemPosition()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    return-void
.end method
