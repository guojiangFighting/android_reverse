.class public Lcom/dodonew/online/bean/TableResult;
.super Ljava/lang/Object;
.source "TableResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/bean/TableResult$Center;
    }
.end annotation


# instance fields
.field private center:Lcom/dodonew/online/bean/TableResult$Center;

.field public code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getCenter()Lcom/dodonew/online/bean/TableResult$Center;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dodonew/online/bean/TableResult;->center:Lcom/dodonew/online/bean/TableResult$Center;

    return-object v0
.end method

.method public setCenter(Lcom/dodonew/online/bean/TableResult$Center;)V
    .locals 0
    .param p1, "center"    # Lcom/dodonew/online/bean/TableResult$Center;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/dodonew/online/bean/TableResult;->center:Lcom/dodonew/online/bean/TableResult$Center;

    .line 18
    return-void
.end method
