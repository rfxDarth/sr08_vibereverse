.class public abstract Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;
.super Lcom/jaga/ibraceletplus/jyring/dslv/DragSortCursorAdapter;
.source "ResourceDragSortCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-direct {p0, p1, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 57
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    .line 58
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p3, p4}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 96
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    .line 97
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p3, p4}, Lcom/jaga/ibraceletplus/jyring/dslv/DragSortCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 79
    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    .line 80
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mDropDownLayout:I

    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->mLayout:I

    return-void
.end method
