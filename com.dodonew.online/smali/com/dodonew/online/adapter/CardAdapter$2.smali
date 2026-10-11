.class Lcom/dodonew/online/adapter/CardAdapter$2;
.super Ljava/lang/Object;
.source "CardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/CardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/CardAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/CardAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/CardAdapter;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dodonew/online/adapter/CardAdapter$2;->this$0:Lcom/dodonew/online/adapter/CardAdapter;

    iput p2, p0, Lcom/dodonew/online/adapter/CardAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter$2;->this$0:Lcom/dodonew/online/adapter/CardAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/CardAdapter;->access$000(Lcom/dodonew/online/adapter/CardAdapter;)Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/adapter/CardAdapter$2;->this$0:Lcom/dodonew/online/adapter/CardAdapter;

    invoke-static {v0}, Lcom/dodonew/online/adapter/CardAdapter;->access$000(Lcom/dodonew/online/adapter/CardAdapter;)Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;

    move-result-object v0

    iget v1, p0, Lcom/dodonew/online/adapter/CardAdapter$2;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/dodonew/online/widget/swipelayout/IOnItemRightClickListener;->onRightClick(Landroid/view/View;I)V

    .line 98
    :cond_0
    return-void
.end method
