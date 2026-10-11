.class public Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;
.super Ljava/lang/Object;
.source "StickyRecyclerHeadersTouchListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;,
        Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private final mDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

.field private mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mTapDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "decor"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$SingleTapDetector;-><init>(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mTapDetector:Landroid/view/GestureDetector;

    .line 22
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 23
    iput-object p2, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    .line 24
    return-void
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;)Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    return-object v0
.end method


# virtual methods
.method public getAdapter()Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A RecyclerView with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersAdapter;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    if-eqz v4, :cond_2

    .line 44
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 45
    .local v1, "tapDetectorResponse":Z
    if-eqz v1, :cond_1

    .line 54
    .end local v1    # "tapDetectorResponse":Z
    :cond_0
    :goto_0
    return v2

    .line 49
    .restart local v1    # "tapDetectorResponse":Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    .line 50
    iget-object v4, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mDecor:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersDecoration;->findHeaderPositionUnder(II)I

    move-result v0

    .line 51
    .local v0, "position":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "position":I
    .end local v1    # "tapDetectorResponse":Z
    :cond_2
    move v2, v3

    .line 54
    goto :goto_0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 62
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener;->mOnHeaderClickListener:Lcom/dodonew/online/widget/stickyheaderview/StickyRecyclerHeadersTouchListener$OnHeaderClickListener;

    .line 39
    return-void
.end method
