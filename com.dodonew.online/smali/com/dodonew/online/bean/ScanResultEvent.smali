.class public Lcom/dodonew/online/bean/ScanResultEvent;
.super Ljava/lang/Object;
.source "ScanResultEvent.java"


# instance fields
.field public domainId:Ljava/lang/String;

.field public netbarId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "domainId"    # Ljava/lang/String;
    .param p2, "netbarId"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/dodonew/online/bean/ScanResultEvent;->domainId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/dodonew/online/bean/ScanResultEvent;->netbarId:Ljava/lang/String;

    .line 15
    return-void
.end method
