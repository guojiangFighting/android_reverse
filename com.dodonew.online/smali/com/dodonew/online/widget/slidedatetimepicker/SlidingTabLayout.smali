.class public Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabClickListener;,
        Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private final mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

.field private mTabTitleViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabTitleViews:Landroid/util/SparseArray;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setFillViewport(Z)V

    .line 109
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTitleOffset:I

    .line 111
    new-instance v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-direct {v0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    .line 112
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 113
    return-void
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;II)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private populateTabStrip()V
    .locals 9

    .prologue
    .line 209
    iget-object v5, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 210
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    new-instance v2, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabClickListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabClickListener;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$1;)V

    .line 212
    .local v2, "tabClickListener":Landroid/view/View$OnClickListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 213
    const/4 v4, 0x0

    .line 214
    .local v4, "tabView":Landroid/view/View;
    const/4 v3, 0x0

    .line 216
    .local v3, "tabTitleView":Landroid/widget/TextView;
    iget v5, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v5, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v7, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 220
    iget v5, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "tabTitleView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 223
    .restart local v3    # "tabTitleView":Landroid/widget/TextView;
    :cond_0
    if-nez v4, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 227
    :cond_1
    if-nez v3, :cond_2

    const-class v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 228
    check-cast v3, Landroid/widget/TextView;

    .line 231
    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v5, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabTitleViews:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    iget-object v5, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-virtual {v5, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v3    # "tabTitleView":Landroid/widget/TextView;
    .end local v4    # "tabView":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private scrollToTab(II)V
    .locals 4
    .param p1, "tabIndex"    # I
    .param p2, "positionOffset"    # I

    .prologue
    .line 266
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 267
    .local v1, "tabStripChildCount":I
    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-virtual {v3, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "selectedChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int v2, v3, p2

    .line 275
    .local v2, "targetScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 277
    :cond_2
    iget v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v2, v3

    .line 280
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 183
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    const/4 v3, 0x2

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 191
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 192
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101030e

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 194
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 197
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 199
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 202
    :cond_1
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 203
    .local v1, "padding":I
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 205
    return-object v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 260
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->scrollToTab(II)V

    .line 263
    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;)V
    .locals 1
    .param p1, "tabColorizer"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->setCustomTabColorizer(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;)V

    .line 124
    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "textViewId"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabViewLayoutId:I

    .line 161
    iput p2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabViewTextViewId:I

    .line 162
    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->setDividerColors([I)V

    .line 140
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 151
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    .line 132
    return-void
.end method

.method public setTabText(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabTitleViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mTabStrip:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;->removeAllViews()V

    .line 171
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 174
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->populateTabStrip()V

    .line 176
    :cond_0
    return-void
.end method
