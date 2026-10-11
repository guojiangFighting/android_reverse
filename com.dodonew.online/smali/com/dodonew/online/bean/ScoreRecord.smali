.class public Lcom/dodonew/online/bean/ScoreRecord;
.super Ljava/lang/Object;
.source "ScoreRecord.java"


# instance fields
.field private operaStatus:Ljava/lang/String;

.field private operaTime:Ljava/lang/String;

.field private operaType:Ljava/lang/String;

.field private scoreStrategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOperaStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreRecord;->operaStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOperaTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreRecord;->operaTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOperaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreRecord;->operaType:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreRecord;->scoreStrategy:Ljava/lang/String;

    return-object v0
.end method

.method public setOperaStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "operaStatus"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreRecord;->operaStatus:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setOperaTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "operaTime"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreRecord;->operaTime:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setOperaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "operaType"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreRecord;->operaType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setScoreStrategy(Ljava/lang/String;)V
    .locals 0
    .param p1, "scoreStrategy"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreRecord;->scoreStrategy:Ljava/lang/String;

    .line 43
    return-void
.end method
