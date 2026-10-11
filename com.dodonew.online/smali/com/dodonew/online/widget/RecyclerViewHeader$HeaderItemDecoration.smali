.class Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecyclerViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/RecyclerViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderItemDecoration"
.end annotation


# instance fields
.field private mHeaderHeight:I

.field private mNumberOfChildren:I

.field final synthetic this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/RecyclerViewHeader;Landroid/support/v7/widget/RecyclerView$LayoutManager;I)V
    .locals 2
    .param p2, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .param p3, "height"    # I

    .prologue
    .line 248
    iput-object p1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 249
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-ne v0, v1, :cond_1

    .line 250
    const/4 v0, 0x1

    iput v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->mNumberOfChildren:I

    .line 256
    .end local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    :goto_0
    iput p3, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->mHeaderHeight:I

    .line 257
    return-void

    .line 251
    .restart local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/GridLayoutManager;

    if-ne v0, v1, :cond_2

    .line 252
    check-cast p2, Landroid/support/v7/widget/GridLayoutManager;

    .end local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->mNumberOfChildren:I

    goto :goto_0

    .line 253
    .restart local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_2
    instance-of v0, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 254
    check-cast p2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->mNumberOfChildren:I

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 262
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->mNumberOfChildren:I

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->mHeaderHeight:I

    .line 263
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/RecyclerViewHeader$HeaderItemDecoration;->this$0:Lcom/dodonew/online/widget/RecyclerViewHeader;

    invoke-static {v1}, Lcom/dodonew/online/widget/RecyclerViewHeader;->access$200(Lcom/dodonew/online/widget/RecyclerViewHeader;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 268
    :goto_1
    return-void

    .line 262
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    .restart local v0    # "value":I
    :cond_1
    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method
