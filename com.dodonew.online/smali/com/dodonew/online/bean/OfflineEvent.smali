.class public Lcom/dodonew/online/bean/OfflineEvent;
.super Ljava/lang/Object;
.source "OfflineEvent.java"


# instance fields
.field public info:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/dodonew/online/bean/OfflineEvent;->info:Ljava/lang/String;

    .line 12
    return-void
.end method
