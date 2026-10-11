.class Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/PopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/PopAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/PopAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/PopAdapter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dodonew/online/adapter/PopAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/PopAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
