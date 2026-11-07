.class public Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;
.super Ljava/lang/Object;
.source "DeviceProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enableCalling:Z

.field private enableLight:Z

.field private enableQuite:Z

.field private enableShortVideo:Z

.field private enableVibrate:Z

.field private lightDegree:I

.field private quiteEndHour:I

.field private quiteEndMin:I

.field private quiteStartHour:I

.field private quiteStartMin:I

.field private wearMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile$1;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile$1;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableLight:Z

    .line 9
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableVibrate:Z

    .line 10
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableQuite:Z

    .line 11
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartHour:I

    .line 12
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndHour:I

    .line 13
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartMin:I

    .line 14
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndMin:I

    .line 15
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableCalling:Z

    .line 16
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableShortVideo:Z

    .line 17
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->wearMode:I

    const/4 v0, 0x4

    .line 18
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->lightDegree:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableLight:Z

    .line 9
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableVibrate:Z

    .line 10
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableQuite:Z

    .line 11
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartHour:I

    .line 12
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndHour:I

    .line 13
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartMin:I

    .line 14
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndMin:I

    .line 15
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableCalling:Z

    .line 16
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableShortVideo:Z

    .line 17
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->wearMode:I

    const/4 v1, 0x4

    .line 18
    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->lightDegree:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableLight:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableVibrate:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableQuite:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartHour:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartMin:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndHour:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndMin:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableCalling:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableShortVideo:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->wearMode:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->lightDegree:I

    return-void
.end method

.method public constructor <init>(ZZZIIIIZZII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableLight:Z

    .line 27
    iput-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableVibrate:Z

    .line 28
    iput-boolean p3, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableQuite:Z

    .line 29
    iput p4, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartHour:I

    .line 30
    iput p5, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndHour:I

    .line 31
    iput p6, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartMin:I

    .line 32
    iput p7, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndMin:I

    .line 33
    iput-boolean p8, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableCalling:Z

    .line 34
    iput-boolean p9, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableShortVideo:Z

    .line 35
    iput p10, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->wearMode:I

    .line 36
    iput p11, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->lightDegree:I

    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLightDegree()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->lightDegree:I

    return v0
.end method

.method public getQuiteEndHour()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndHour:I

    return v0
.end method

.method public getQuiteEndMin()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndMin:I

    return v0
.end method

.method public getQuiteStartHour()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartHour:I

    return v0
.end method

.method public getQuiteStartMin()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartMin:I

    return v0
.end method

.method public getWearMode()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->wearMode:I

    return v0
.end method

.method public isEnableCalling()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableCalling:Z

    return v0
.end method

.method public isEnableLight()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableLight:Z

    return v0
.end method

.method public isEnableQuite()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableQuite:Z

    return v0
.end method

.method public isEnableShortVideo()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableShortVideo:Z

    return v0
.end method

.method public isEnableVibrate()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableVibrate:Z

    return v0
.end method

.method public setEnableCalling(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableCalling:Z

    return-void
.end method

.method public setEnableLight(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableLight:Z

    return-void
.end method

.method public setEnableQuite(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableQuite:Z

    return-void
.end method

.method public setEnableShortVideo(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableShortVideo:Z

    return-void
.end method

.method public setEnableVibrate(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableVibrate:Z

    return-void
.end method

.method public setLightDegree(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->lightDegree:I

    return-void
.end method

.method public setQuiteEndHour(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndHour:I

    return-void
.end method

.method public setQuiteEndMin(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndMin:I

    return-void
.end method

.method public setQuiteStartHour(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartHour:I

    return-void
.end method

.method public setQuiteStartMin(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartMin:I

    return-void
.end method

.method public setWearMode(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->wearMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 157
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableLight:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableVibrate:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 159
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableQuite:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 160
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteStartMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->quiteEndMin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableCalling:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-boolean p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->enableShortVideo:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 166
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->wearMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/DeviceProfile;->lightDegree:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
