.class public Lcom/dodonew/online/bean/Active;
.super Ljava/lang/Object;
.source "Active.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Active;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actiContext:Ljava/lang/String;

.field private actiTitle:Ljava/lang/String;

.field private actid:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private netBarId:Ljava/lang/String;

.field private netBarName:Ljava/lang/String;

.field private pageCount:Ljava/lang/String;

.field private picURL:Ljava/lang/String;

.field private startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/dodonew/online/bean/Active$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Active$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Active;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->actid:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->domainId:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->netBarId:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->netBarName:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->actiTitle:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->startTime:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->endTime:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->actiContext:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->pageCount:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Active;->picURL:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getActiContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->actiContext:Ljava/lang/String;

    return-object v0
.end method

.method public getActiTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->actiTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getActid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->actid:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->netBarId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetBarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->netBarName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPicURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->picURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setActiContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "actiContext"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->actiContext:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setActiTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "actiTitle"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->actiTitle:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setActid(Ljava/lang/String;)V
    .locals 0
    .param p1, "actid"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->actid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->domainId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->endTime:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setNetBarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->netBarId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setNetBarName(Ljava/lang/String;)V
    .locals 0
    .param p1, "netBarName"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->netBarName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageCount"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->pageCount:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPicURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "picURL"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->picURL:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dodonew/online/bean/Active;->startTime:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->actid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->domainId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->netBarId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->netBarName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->actiTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->actiContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->pageCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/bean/Active;->picURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return-void
.end method
