.class public Lcom/dodonew/online/bean/ScoreCategory;
.super Ljava/lang/Object;
.source "ScoreCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private perOdds:Ljava/lang/String;

.field private raceName:Ljava/lang/String;

.field private totalInvest:Ljava/lang/String;

.field private userInvest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/dodonew/online/bean/ScoreCategory$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/ScoreCategory$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/ScoreCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->id:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->perOdds:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->raceName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->totalInvest:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->userInvest:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "perOdds"    # Ljava/lang/String;
    .param p3, "raceName"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreCategory;->id:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/dodonew/online/bean/ScoreCategory;->perOdds:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/dodonew/online/bean/ScoreCategory;->raceName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPerOdds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->perOdds:Ljava/lang/String;

    return-object v0
.end method

.method public getRaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->raceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalInvest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->totalInvest:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInvest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->userInvest:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreCategory;->id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPerOdds(Ljava/lang/String;)V
    .locals 0
    .param p1, "perOdds"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreCategory;->perOdds:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setRaceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "raceName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreCategory;->raceName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTotalInvest(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalInvest"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreCategory;->totalInvest:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUserInvest(Ljava/lang/String;)V
    .locals 0
    .param p1, "userInvest"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreCategory;->userInvest:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->perOdds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->raceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->totalInvest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreCategory;->userInvest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
