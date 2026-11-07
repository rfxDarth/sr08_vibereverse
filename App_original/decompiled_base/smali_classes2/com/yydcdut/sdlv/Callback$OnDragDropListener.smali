.class public interface abstract Lcom/yydcdut/sdlv/Callback$OnDragDropListener;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yydcdut/sdlv/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDragDropListener"
.end annotation


# virtual methods
.method public abstract onDragFinished(IILcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
.end method

.method public abstract onDragMoving(IILandroid/view/View;Lcom/yydcdut/sdlv/SlideAndDragListView$OnDragDropListener;)V
.end method

.method public abstract onDragStarted(IILandroid/view/View;)Z
.end method
