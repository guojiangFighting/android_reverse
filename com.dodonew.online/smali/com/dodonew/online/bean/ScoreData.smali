.class public Lcom/dodonew/online/bean/ScoreData;
.super Ljava/lang/Object;
.source "ScoreData.java"


# instance fields
.field private scoreCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private totalCount:Ljava/lang/String;

.field private totalScore:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "totalCount"    # Ljava/lang/String;
    .param p3, "totalScore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/ScoreCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p4, "scoreCategories":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreCategory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreData;->title:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/dodonew/online/bean/ScoreData;->totalCount:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/dodonew/online/bean/ScoreData;->totalScore:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/dodonew/online/bean/ScoreData;->scoreCategories:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public getScoreCategories()Ljava/util/List;
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
    .line 23
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreData;->scoreCategories:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreData;->totalCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreData;->totalScore:Ljava/lang/String;

    return-object v0
.end method

.method public setScoreCategories(Ljava/util/List;)V
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
    .line 27
    .local p1, "scoreCategories":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/ScoreCategory;>;"
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreData;->scoreCategories:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreData;->title:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTotalCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalCount"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreData;->totalCount:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTotalScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalScore"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreData;->totalScore:Ljava/lang/String;

    .line 52
    return-void
.end method
