.class public Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;
.super Ljava/lang/Object;
.source "SmsRspInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemsSmsRsp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo$1;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo$1;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->itemsSmsRsp:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->itemsSmsRsp:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->itemsSmsRsp:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setItemsECard(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->itemsSmsRsp:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 35
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfo;->itemsSmsRsp:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
