.class Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StickyRecyclerHeadersTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleTapDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;
    .param p2, "x1"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    invoke-static {v5}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->access$100(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->findHeaderPositionUnder(II)I

    move-result v3

    .line 68
    .local v3, "position":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    invoke-static {v5}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->access$100(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    invoke-static {v6}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->access$200(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->getHeaderView(Landroid/support/v7/widget/RecyclerView;I)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, "headerView":Landroid/view/View;
    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    invoke-virtual {v5}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->getAdapter()Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    .line 71
    .local v0, "headerId":J
    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    invoke-static {v5}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->access$300(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    move-result-object v5

    invoke-interface {v5, v2, v3, v0, v1}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;->onHeaderClick(Landroid/view/View;IJ)V

    .line 72
    iget-object v5, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;->this$0:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    invoke-static {v5}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->access$200(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->playSoundEffect(I)V

    .line 73
    invoke-virtual {v2, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 74
    const/4 v4, 0x1

    .line 76
    .end local v0    # "headerId":J
    .end local v2    # "headerView":Landroid/view/View;
    :cond_0
    return v4
.end method
