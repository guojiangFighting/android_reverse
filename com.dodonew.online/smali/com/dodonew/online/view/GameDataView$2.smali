.class Lcom/dodonew/online/view/GameDataView$2;
.super Ljava/lang/Object;
.source "GameDataView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GameDataView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GameDataView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GameDataView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GameDataView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/dodonew/online/view/GameDataView$2;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$2;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-static {v0}, Lcom/dodonew/online/view/GameDataView;->access$400(Lcom/dodonew/online/view/GameDataView;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/view/GameDataView$2;->this$0:Lcom/dodonew/online/view/GameDataView;

    invoke-virtual {v0}, Lcom/dodonew/online/view/GameDataView;->queryGameById()V

    .line 124
    return-void
.end method
