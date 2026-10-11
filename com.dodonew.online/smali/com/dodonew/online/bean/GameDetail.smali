.class public Lcom/dodonew/online/bean/GameDetail;
.super Ljava/lang/Object;
.source "GameDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/GameDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channel:Lcom/dodonew/online/bean/Channel;

.field public game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/Game;",
            ">;"
        }
    .end annotation
.end field

.field private preview:Ljava/lang/String;

.field private viewers:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/dodonew/online/bean/GameDetail$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/GameDetail$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/GameDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->preview:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/dodonew/online/bean/Channel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Channel;

    iput-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->channel:Lcom/dodonew/online/bean/Channel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->viewers:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/dodonew/online/bean/Game;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->game:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()Lcom/dodonew/online/bean/Channel;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->channel:Lcom/dodonew/online/bean/Channel;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getViewers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->viewers:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Lcom/dodonew/online/bean/Channel;)V
    .locals 0
    .param p1, "channel"    # Lcom/dodonew/online/bean/Channel;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dodonew/online/bean/GameDetail;->channel:Lcom/dodonew/online/bean/Channel;

    .line 23
    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .locals 0
    .param p1, "preview"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dodonew/online/bean/GameDetail;->preview:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setViewers(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewers"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/bean/GameDetail;->viewers:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->preview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->channel:Lcom/dodonew/online/bean/Channel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->viewers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/bean/GameDetail;->game:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    return-void
.end method
