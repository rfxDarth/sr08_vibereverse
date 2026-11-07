.class Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile$1;
.super Ljava/lang/Object;
.source "DeviceProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;
    .locals 1

    .line 179
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    invoke-direct {v0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;
    .locals 0

    .line 174
    new-array p1, p1, [Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile$1;->newArray(I)[Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;

    move-result-object p1

    return-object p1
.end method
