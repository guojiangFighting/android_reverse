.class public Lcom/dodonew/online/bean/RaceSubject;
.super Ljava/lang/Object;
.source "RaceSubject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/RaceSubject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private scheduleType:Ljava/lang/String;

.field private subjectId:Ljava/lang/String;

.field private subjectName:Ljava/lang/String;

.field private subjectOrder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/dodonew/online/bean/RaceSubject$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/RaceSubject$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/RaceSubject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->scheduleType:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectOrder:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getScheduleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->scheduleType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectOrder:Ljava/lang/String;

    return-object v0
.end method

.method public setScheduleType(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheduleType"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dodonew/online/bean/RaceSubject;->scheduleType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setSubjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subjectId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSubjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "subjectName"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSubjectOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "subjectOrder"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectOrder:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->scheduleType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/dodonew/online/bean/RaceSubject;->subjectOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
