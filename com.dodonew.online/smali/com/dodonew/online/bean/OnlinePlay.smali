.class public Lcom/dodonew/online/bean/OnlinePlay;
.super Ljava/lang/Object;
.source "OnlinePlay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/OnlinePlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addTime:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private isonlyThisNet:Ljava/lang/String;

.field private netBarId:Ljava/lang/String;

.field private netBarName:Ljava/lang/String;

.field private picURL:Ljava/lang/String;

.field private playContext:Ljava/lang/String;

.field private playPrize:Ljava/lang/String;

.field private playTitle:Ljava/lang/String;

.field private playid:Ljava/lang/String;

.field private startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/dodonew/online/bean/OnlinePlay$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/OnlinePlay$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/OnlinePlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playid:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->addTime:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->endTime:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->isonlyThisNet:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarId:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->domainId:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarName:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playContext:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playPrize:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playTitle:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->startTime:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->picURL:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getAddTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->addTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsonlyThisNet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->isonlyThisNet:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarName:Ljava/lang/String;

    return-object v0
.end method

.method public getPicURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->picURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playContext:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayPrize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playPrize:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playid:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "addTime"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->addTime:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->domainId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->endTime:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setIsonlyThisNet(Ljava/lang/String;)V
    .locals 0
    .param p1, "isonlyThisNet"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->isonlyThisNet:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setNetBarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setNetBarName(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPicURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "picURL"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->picURL:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPlayContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "playContext"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->playContext:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPlayPrize(Ljava/lang/String;)V
    .locals 0
    .param p1, "playPrize"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->playPrize:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPlayTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "playTitle"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->playTitle:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPlayid(Ljava/lang/String;)V
    .locals 0
    .param p1, "playid"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->playid:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/dodonew/online/bean/OnlinePlay;->startTime:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->addTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->isonlyThisNet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->domainId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->netBarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playPrize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->playTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/dodonew/online/bean/OnlinePlay;->picURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return-void
.end method
