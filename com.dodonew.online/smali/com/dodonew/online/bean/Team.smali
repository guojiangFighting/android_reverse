.class public Lcom/dodonew/online/bean/Team;
.super Ljava/lang/Object;
.source "Team.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Team;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private teamId:Ljava/lang/String;

.field private teamImg:Ljava/lang/String;

.field private teamName:Ljava/lang/String;

.field private teamType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/dodonew/online/bean/Team$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Team$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Team;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Team;->teamId:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Team;->teamImg:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Team;->teamName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Team;->teamType:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamImg:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamType:Ljava/lang/String;

    return-object v0
.end method

.method public setTeamId(Ljava/lang/String;)V
    .locals 0
    .param p1, "teamId"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dodonew/online/bean/Team;->teamId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTeamImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "teamImg"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dodonew/online/bean/Team;->teamImg:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTeamName(Ljava/lang/String;)V
    .locals 0
    .param p1, "teamName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/bean/Team;->teamName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTeamType(Ljava/lang/String;)V
    .locals 0
    .param p1, "teamType"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dodonew/online/bean/Team;->teamType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/dodonew/online/bean/Team;->teamType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
