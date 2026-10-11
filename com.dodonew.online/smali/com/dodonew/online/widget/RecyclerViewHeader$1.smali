.class Lcom/dodonew/online/widget/RecyclerViewHeader$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/RecyclerViewHeader;->setupHeader(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/RecyclerViewHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/RecyclerViewHeader;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 162
    iget-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-static {v1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->access$000(Lcom/dodonew/online/widget/RecyclerViewHeader;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->access$002(Lcom/dodonew/online/widget/RecyclerViewHeader;I)I

    .line 163
    iget-object v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$1;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-static {v1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->access$000(Lcom/dodonew/online/widget/RecyclerViewHeader;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->setTranslationY(F)V

    .line 164
    return-void
.end method
