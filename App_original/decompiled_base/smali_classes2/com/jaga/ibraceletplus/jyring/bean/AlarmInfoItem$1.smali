.class Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem$1;
.super Ljava/lang/Object;
.source "AlarmInfoItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 1

    .line 59
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-direct {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
    .locals 0

    .line 55
    new-array p1, p1, [Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem$1;->newArray(I)[Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p1

    return-object p1
.end method
