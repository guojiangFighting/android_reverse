.class Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$2;
.super Ljava/lang/Object;
.source "MaterialRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$2;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout$2;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshing()V

    .line 494
    return-void
.end method
