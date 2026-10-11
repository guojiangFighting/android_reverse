.class public Lcom/dodonew/online/bean/OrderResult$Center;
.super Ljava/lang/Object;
.source "OrderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/OrderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Center"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/OrderDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dodonew/online/bean/OrderResult;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/OrderResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/bean/OrderResult;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/OrderResult$Center;->this$0:Lcom/dodonew/online/bean/OrderResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
