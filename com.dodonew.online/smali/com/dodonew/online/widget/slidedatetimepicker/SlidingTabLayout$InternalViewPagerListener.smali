.class Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;
    .param p2, "x1"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 312
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 289
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 290
    .local v2, "tabStripChildCount":I
    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 296
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 297
    .local v1, "selectedTitle":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v0, v3

    .line 300
    .local v0, "extraOffset":I
    :goto_1
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v3, p1, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;II)V

    .line 302
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 298
    .end local v0    # "extraOffset":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 319
    iget v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 321
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;II)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 327
    :cond_1
    return-void
.end method
