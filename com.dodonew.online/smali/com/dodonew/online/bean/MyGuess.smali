.class public Lcom/dodonew/online/bean/MyGuess;
.super Ljava/lang/Object;
.source "MyGuess.java"


# instance fields
.field private loseCount:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyGuessDetail;",
            ">;"
        }
    .end annotation
.end field

.field private winCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoseCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dodonew/online/bean/MyGuess;->loseCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dodonew/online/bean/MyGuess;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyGuessDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dodonew/online/bean/MyGuess;->results:Ljava/util/List;

    return-object v0
.end method

.method public getWinCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dodonew/online/bean/MyGuess;->winCount:Ljava/lang/String;

    return-object v0
.end method

.method public setLoseCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "loseCount"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/dodonew/online/bean/MyGuess;->loseCount:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/bean/MyGuess;->pageSize:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/MyGuessDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/MyGuessDetail;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/MyGuess;->results:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setWinCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "winCount"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dodonew/online/bean/MyGuess;->winCount:Ljava/lang/String;

    .line 45
    return-void
.end method
