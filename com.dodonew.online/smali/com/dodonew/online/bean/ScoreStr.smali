.class public Lcom/dodonew/online/bean/ScoreStr;
.super Ljava/lang/Object;
.source "ScoreStr.java"


# instance fields
.field private score:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/dodonew/online/bean/ScoreStr;->score:Ljava/lang/String;

    return-object v0
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0
    .param p1, "score"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dodonew/online/bean/ScoreStr;->score:Ljava/lang/String;

    .line 16
    return-void
.end method
