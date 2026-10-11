.class public Lcom/dodonew/online/bean/Guess;
.super Ljava/lang/Object;
.source "Guess.java"


# instance fields
.field private aCount:Ljava/lang/String;

.field private bCount:Ljava/lang/String;

.field private detail:Lcom/dodonew/online/bean/Race;

.field private raceId:Ljava/lang/String;

.field private scoreCategory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:Ljava/lang/String;

.field private userScore:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Lcom/dodonew/online/bean/Race;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dodonew/online/bean/Guess;->detail:Lcom/dodonew/online/bean/Race;

    return-object v0
.end method

.method public getRaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dodonew/online/bean/Guess;->raceId:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreCategory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dodonew/online/bean/Guess;->scoreCategory:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dodonew/online/bean/Guess;->totalCount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dodonew/online/bean/Guess;->userScore:Ljava/lang/String;

    return-object v0
.end method

.method public getaCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dodonew/online/bean/Guess;->aCount:Ljava/lang/String;

    return-object v0
.end method

.method public getbCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/bean/Guess;->bCount:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Lcom/dodonew/online/bean/Race;)V
    .locals 0
    .param p1, "detail"    # Lcom/dodonew/online/bean/Race;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/dodonew/online/bean/Guess;->detail:Lcom/dodonew/online/bean/Race;

    .line 40
    return-void
.end method

.method public setRaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "raceId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dodonew/online/bean/Guess;->raceId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setScoreCategory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "scoreCategory":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreCategory;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/Guess;->scoreCategory:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setTotalCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalCount"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/dodonew/online/bean/Guess;->totalCount:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUserScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "userScore"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dodonew/online/bean/Guess;->userScore:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setaCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "aCount"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/dodonew/online/bean/Guess;->aCount:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setbCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "bCount"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dodonew/online/bean/Guess;->bCount:Ljava/lang/String;

    .line 32
    return-void
.end method
