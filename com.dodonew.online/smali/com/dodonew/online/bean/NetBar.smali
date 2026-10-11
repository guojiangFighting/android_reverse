.class public Lcom/dodonew/online/bean/NetBar;
.super Ljava/lang/Object;
.source "NetBar.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private QQnetBarId:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private area:Ljava/lang/String;

.field private collectCount:Ljava/lang/String;

.field private collectStatus:I

.field private contactPerson:Ljava/lang/String;

.field private contactPhone:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private delstatus:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private ipaAddr:Ljava/lang/String;

.field private isSupportOrderOnline:Ljava/lang/String;

.field private isSupportPayByPhone:Ljava/lang/String;

.field private isSupportSale:Ljava/lang/String;

.field private isSupportWIFI:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private maxPrice:Ljava/lang/String;

.field private minPrice:Ljava/lang/String;

.field private netAccount:Ljava/lang/String;

.field private netBarCaption:Ljava/lang/String;

.field private netBarId:Ljava/lang/String;

.field private netBarInfoId:Ljava/lang/String;

.field private onlineDevNo:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private qqNetBarAddress:Ljava/lang/String;

.field private qqNetBarCaption:Ljava/lang/String;

.field private regularTel:Ljava/lang/String;

.field private searchCount:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/dodonew/online/bean/NetBar$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/NetBar$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/NetBar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->QQnetBarId:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->address:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->area:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->collectCount:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/bean/NetBar;->collectStatus:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->contactPerson:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->contactPhone:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->createTime:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->delstatus:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->distance:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->domainId:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->ipaAddr:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportOrderOnline:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportPayByPhone:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportSale:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportWIFI:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->latitude:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->longitude:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->maxPrice:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->minPrice:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarCaption:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarId:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarInfoId:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->onlineDevNo:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->picUrl:Ljava/lang/String;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarAddress:Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarCaption:Ljava/lang/String;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->searchCount:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->title:Ljava/lang/String;

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netAccount:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/NetBar;->regularTel:Ljava/lang/String;

    .line 367
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->collectCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectStatus()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/dodonew/online/bean/NetBar;->collectStatus:I

    return v0
.end method

.method public getContactPerson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->contactPerson:Ljava/lang/String;

    return-object v0
.end method

.method public getContactPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->contactPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDelstatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->delstatus:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getIpaAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->ipaAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSupportOrderOnline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportOrderOnline:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSupportPayByPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportPayByPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSupportSale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportSale:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSupportWIFI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportWIFI:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->maxPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getMinPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->minPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getNetAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarInfoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarInfoId:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineDevNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->onlineDevNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getQQnetBarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->QQnetBarId:Ljava/lang/String;

    return-object v0
.end method

.method public getQqNetBarAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getQqNetBarCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getRegularTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->regularTel:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->searchCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->address:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->area:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCollectCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "collectCount"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->collectCount:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setCollectStatus(I)V
    .locals 0
    .param p1, "collectStatus"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/dodonew/online/bean/NetBar;->collectStatus:I

    .line 89
    return-void
.end method

.method public setContactPerson(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactPerson"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->contactPerson:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setContactPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactPhone"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->contactPhone:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->createTime:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDelstatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "delstatus"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->delstatus:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->distance:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainId"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->domainId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setIpaAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipaAddr"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->ipaAddr:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setIsSupportOrderOnline(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSupportOrderOnline"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->isSupportOrderOnline:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setIsSupportPayByPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSupportPayByPhone"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->isSupportPayByPhone:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setIsSupportSale(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSupportSale"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->isSupportSale:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setIsSupportWIFI(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSupportWIFI"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->isSupportWIFI:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->latitude:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->longitude:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setMaxPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "maxPrice"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->maxPrice:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setMinPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "minPrice"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->minPrice:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setNetAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "netAccount"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->netAccount:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setNetBarCaption(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarCaption"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->netBarCaption:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setNetBarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->netBarId:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setNetBarInfoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarInfoId"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->netBarInfoId:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setOnlineDevNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "onlineDevNo"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->onlineDevNo:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->picUrl:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setQQnetBarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "QQnetBarId"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->QQnetBarId:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setQqNetBarAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "qqNetBarAddress"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarAddress:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setQqNetBarCaption(Ljava/lang/String;)V
    .locals 0
    .param p1, "qqNetBarCaption"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarCaption:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setRegularTel(Ljava/lang/String;)V
    .locals 0
    .param p1, "regularTel"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->regularTel:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSearchCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchCount"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->searchCount:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/dodonew/online/bean/NetBar;->title:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->QQnetBarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->area:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->collectCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget v0, p0, Lcom/dodonew/online/bean/NetBar;->collectStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->contactPerson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->contactPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->createTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->delstatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->distance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->domainId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->ipaAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportOrderOnline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportPayByPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportSale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->isSupportWIFI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->latitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->longitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->maxPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->minPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netBarInfoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->onlineDevNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->picUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->qqNetBarCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->searchCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->netAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/dodonew/online/bean/NetBar;->regularTel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    return-void
.end method
