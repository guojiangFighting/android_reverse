.class public Lcom/dodonew/online/bean/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field private isSelected:Ljava/lang/String;

.field private seatNum:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/dodonew/online/bean/Table;->isSelected:Ljava/lang/String;

    return-object v0
.end method

.method public getSeatNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dodonew/online/bean/Table;->seatNum:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/bean/Table;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setIsSelected(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSelected"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/dodonew/online/bean/Table;->isSelected:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setSeatNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "seatNum"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/dodonew/online/bean/Table;->seatNum:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/dodonew/online/bean/Table;->type:Ljava/lang/String;

    .line 32
    return-void
.end method
