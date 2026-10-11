.class public Lcom/dodonew/online/bean/TableAreaResult$Center;
.super Ljava/lang/Object;
.source "TableAreaResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/TableAreaResult;
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
            "Lcom/dodonew/online/bean/TableArea;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dodonew/online/bean/TableAreaResult;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/TableAreaResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/bean/TableAreaResult;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/dodonew/online/bean/TableAreaResult$Center;->this$0:Lcom/dodonew/online/bean/TableAreaResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
