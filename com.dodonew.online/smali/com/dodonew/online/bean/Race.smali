.class public Lcom/dodonew/online/bean/Race;
.super Ljava/lang/Object;
.source "Race.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dodonew/online/bean/Race;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aOdds:Ljava/lang/String;

.field private aScore:Ljava/lang/String;

.field private autoOdds:Ljava/lang/String;

.field private bOdds:Ljava/lang/String;

.field private bScore:Ljava/lang/String;

.field private calculateType:Ljava/lang/String;

.field private countAll:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private playTime:Ljava/lang/String;

.field private raceImg:Ljava/lang/String;

.field private raceRule:Ljava/lang/String;

.field private raceSchedule:Ljava/lang/String;

.field private raceTitle:Ljava/lang/String;

.field private statisticRemark:Ljava/lang/String;

.field private statisticVedio:Ljava/lang/String;

.field private teamA:Lcom/dodonew/online/bean/Team;

.field private teamB:Lcom/dodonew/online/bean/Team;

.field private urGame:Lcom/dodonew/online/bean/UrGame;

.field private urRaceSubject:Lcom/dodonew/online/bean/RaceSubject;

.field private userInvest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/dodonew/online/bean/Race$1;

    invoke-direct {v0}, Lcom/dodonew/online/bean/Race$1;-><init>()V

    sput-object v0, Lcom/dodonew/online/bean/Race;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->id:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->aOdds:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->aScore:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->bOdds:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->bScore:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->calculateType:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->countAll:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->playTime:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->raceImg:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->raceRule:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->raceSchedule:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->raceTitle:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->statisticRemark:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->statisticVedio:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->userInvest:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->autoOdds:Ljava/lang/String;

    .line 284
    const-class v0, Lcom/dodonew/online/bean/Team;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Team;

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->teamA:Lcom/dodonew/online/bean/Team;

    .line 285
    const-class v0, Lcom/dodonew/online/bean/Team;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Team;

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->teamB:Lcom/dodonew/online/bean/Team;

    .line 286
    const-class v0, Lcom/dodonew/online/bean/RaceSubject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/RaceSubject;

    iput-object v0, p0, Lcom/dodonew/online/bean/Race;->urRaceSubject:Lcom/dodonew/online/bean/RaceSubject;

    .line 287
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoOdds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->autoOdds:Ljava/lang/String;

    return-object v0
.end method

.method public getCalculateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->calculateType:Ljava/lang/String;

    return-object v0
.end method

.method public getCountAll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->countAll:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->playTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRaceImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceImg:Ljava/lang/String;

    return-object v0
.end method

.method public getRaceRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceRule:Ljava/lang/String;

    return-object v0
.end method

.method public getRaceSchedule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceSchedule:Ljava/lang/String;

    return-object v0
.end method

.method public getRaceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->statisticRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticVedio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->statisticVedio:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamA()Lcom/dodonew/online/bean/Team;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->teamA:Lcom/dodonew/online/bean/Team;

    return-object v0
.end method

.method public getTeamB()Lcom/dodonew/online/bean/Team;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->teamB:Lcom/dodonew/online/bean/Team;

    return-object v0
.end method

.method public getUrGame()Lcom/dodonew/online/bean/UrGame;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->urGame:Lcom/dodonew/online/bean/UrGame;

    return-object v0
.end method

.method public getUrRaceSubject()Lcom/dodonew/online/bean/RaceSubject;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->urRaceSubject:Lcom/dodonew/online/bean/RaceSubject;

    return-object v0
.end method

.method public getUserInvest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->userInvest:Ljava/lang/String;

    return-object v0
.end method

.method public getaOdds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->aOdds:Ljava/lang/String;

    return-object v0
.end method

.method public getaScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->aScore:Ljava/lang/String;

    return-object v0
.end method

.method public getbOdds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->bOdds:Ljava/lang/String;

    return-object v0
.end method

.method public getbScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->bScore:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoOdds(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoOdds"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->autoOdds:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCalculateType(Ljava/lang/String;)V
    .locals 0
    .param p1, "calculateType"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->calculateType:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setCountAll(Ljava/lang/String;)V
    .locals 0
    .param p1, "countAll"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->countAll:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->id:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setPlayTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "playTime"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->playTime:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setRaceImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "raceImg"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->raceImg:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setRaceRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "raceRule"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->raceRule:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setRaceSchedule(Ljava/lang/String;)V
    .locals 0
    .param p1, "raceSchedule"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->raceSchedule:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setRaceTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "raceTitle"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->raceTitle:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setStatisticRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "statisticRemark"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->statisticRemark:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setStatisticVedio(Ljava/lang/String;)V
    .locals 0
    .param p1, "statisticVedio"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->statisticVedio:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setTeamA(Lcom/dodonew/online/bean/Team;)V
    .locals 0
    .param p1, "teamA"    # Lcom/dodonew/online/bean/Team;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->teamA:Lcom/dodonew/online/bean/Team;

    .line 202
    return-void
.end method

.method public setTeamB(Lcom/dodonew/online/bean/Team;)V
    .locals 0
    .param p1, "teamB"    # Lcom/dodonew/online/bean/Team;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->teamB:Lcom/dodonew/online/bean/Team;

    .line 210
    return-void
.end method

.method public setUrGame(Lcom/dodonew/online/bean/UrGame;)V
    .locals 0
    .param p1, "urGame"    # Lcom/dodonew/online/bean/UrGame;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->urGame:Lcom/dodonew/online/bean/UrGame;

    .line 234
    return-void
.end method

.method public setUrRaceSubject(Lcom/dodonew/online/bean/RaceSubject;)V
    .locals 0
    .param p1, "urRaceSubject"    # Lcom/dodonew/online/bean/RaceSubject;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->urRaceSubject:Lcom/dodonew/online/bean/RaceSubject;

    .line 218
    return-void
.end method

.method public setUserInvest(Ljava/lang/String;)V
    .locals 0
    .param p1, "userInvest"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->userInvest:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setaOdds(Ljava/lang/String;)V
    .locals 0
    .param p1, "aOdds"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->aOdds:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setaScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "aScore"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->aScore:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setbOdds(Ljava/lang/String;)V
    .locals 0
    .param p1, "bOdds"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->bOdds:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setbScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "bScore"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/dodonew/online/bean/Race;->bScore:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->aOdds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->aScore:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->bOdds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->bScore:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->calculateType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->countAll:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->playTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceRule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceSchedule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->raceTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->statisticRemark:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->statisticVedio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->userInvest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->autoOdds:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->teamA:Lcom/dodonew/online/bean/Team;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 260
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->teamB:Lcom/dodonew/online/bean/Team;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/bean/Race;->urRaceSubject:Lcom/dodonew/online/bean/RaceSubject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 262
    return-void
.end method
