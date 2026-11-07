.class public Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;
.super Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;
.source "SimpleDragSortCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;,
        Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 83
    iput-object p5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 84
    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 85
    invoke-direct {p0, p3, p4}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    .line 109
    iput-object p5, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 110
    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 111
    invoke-direct {p0, p3, p4}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 332
    array-length v0, p2

    .line 333
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 334
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 337
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .line 140
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    .line 141
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    array-length v1, v0

    .line 142
    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mFrom:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    .line 146
    aget v5, v0, v4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_0

    .line 150
    aget v6, v2, v4

    invoke-interface {p2, v5, p3, v6}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    .line 154
    aget v6, v2, v4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 156
    const-string v6, ""

    .line 159
    :cond_1
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 160
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, v5, v6}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    :cond_2
    instance-of v7, v5, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 162
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v6}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not a  view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0

    .line 365
    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 366
    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mTo:[I

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 371
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 315
    :cond_0
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 316
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 319
    :cond_1
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getCursorToStringConverter()Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mCursorToStringConverter:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$CursorToStringConverter;

    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mStringConversionColumn:I

    return-void
.end method

.method public setViewBinder(Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mViewBinder:Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter$ViewBinder;

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 214
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 216
    :catch_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/jaga/ibraceletplus/jyring/dslv/SimpleDragSortCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Lcom/jaga/ibraceletplus/jyring/dslv/ResourceDragSortCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
