.class public Lcom/dodonew/online/bean/UrGame;
.super Ljava/lang/Object;
.source "UrGame.java"


# instance fields
.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private icon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/UrGame;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dodonew/online/bean/UrGame;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/bean/UrGame;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/UrGame;->gameId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dodonew/online/bean/UrGame;->gameName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/dodonew/online/bean/UrGame;->icon:Ljava/lang/String;

    .line 33
    return-void
.end method
