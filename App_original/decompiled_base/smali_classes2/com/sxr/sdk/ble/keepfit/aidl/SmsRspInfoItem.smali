.class public Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;
.super Ljava/lang/Object;
.source "SmsRspInfoItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private smsRspId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem$1;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem$1;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->smsRspId:I

    .line 23
    iput-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->smsRspId:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->content:Ljava/lang/String;

    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsRspId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->smsRspId:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setSmsRspId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->smsRspId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->smsRspId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/SmsRspInfoItem;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
