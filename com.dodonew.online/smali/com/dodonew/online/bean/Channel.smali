.class public Lcom/dodonew/online/bean/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Channel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatar:Ljava/lang/String;

.field private broadcast_begin:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private flowers:Ljava/lang/String;

.field private followers:Ljava/lang/String;

.field private glamours:Ljava/lang/String;

.field private grade:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private stream_types:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/dodonew/online/bean/Channel$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Channel$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Channel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->id:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->name:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->avatar:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->grade:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->url:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->status:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->broadcast_begin:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->domain:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->flowers:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->followers:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->glamours:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Channel;->stream_types:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcast_begin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->broadcast_begin:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->flowers:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->followers:Ljava/lang/String;

    return-object v0
.end method

.method public getGlamours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->glamours:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->grade:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStream_types()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->stream_types:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->avatar:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setBroadcast_begin(Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcast_begin"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->broadcast_begin:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->domain:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setFlowers(Ljava/lang/String;)V
    .locals 0
    .param p1, "flowers"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->flowers:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFollowers(Ljava/lang/String;)V
    .locals 0
    .param p1, "followers"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->followers:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setGlamours(Ljava/lang/String;)V
    .locals 0
    .param p1, "glamours"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->glamours:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setGrade(Ljava/lang/String;)V
    .locals 0
    .param p1, "grade"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->grade:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->id:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->status:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setStream_types(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream_types"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->stream_types:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dodonew/online/bean/Channel;->url:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->grade:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->broadcast_begin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->flowers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->followers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->glamours:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/dodonew/online/bean/Channel;->stream_types:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return-void
.end method
