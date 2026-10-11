.class public Lcom/umeng/fb/widget/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/fb/widget/PagerSlidingTabStrip$SavedState;,
        Lcom/umeng/fb/widget/PagerSlidingTabStrip$b;,
        Lcom/umeng/fb/widget/PagerSlidingTabStrip$a;
    }
.end annotation


# static fields
.field private static final b:[I


# instance fields
.field private A:I

.field private B:Landroid/graphics/Typeface;

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/util/Locale;

.field public a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private final e:Lcom/umeng/fb/widget/PagerSlidingTabStrip$b;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const v5, -0x99999a

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/umeng/fb/widget/PagerSlidingTabStrip$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/fb/widget/PagerSlidingTabStrip$b;-><init>(Lcom/umeng/fb/widget/PagerSlidingTabStrip;Lcom/umeng/fb/widget/PagerSlidingTabStrip$1;)V

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->e:Lcom/umeng/fb/widget/PagerSlidingTabStrip$b;

    .line 54
    iput v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    .line 55
    iput v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->j:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->k:F

    .line 61
    iput v5, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->n:I

    .line 62
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->o:I

    .line 63
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->p:I

    .line 65
    iput-boolean v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->q:Z

    .line 66
    iput-boolean v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->r:Z

    .line 68
    const/16 v0, 0x34

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->s:I

    .line 69
    const/16 v0, 0x8

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->t:I

    .line 70
    iput v6, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->u:I

    .line 71
    const/16 v0, 0xc

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->v:I

    .line 72
    const/16 v0, 0x18

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->w:I

    .line 73
    iput v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->x:I

    .line 75
    const/16 v0, 0xc

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    .line 76
    iput v5, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->z:I

    .line 77
    iput v5, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->A:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->B:Landroid/graphics/Typeface;

    .line 79
    iput v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->C:I

    .line 81
    iput v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->D:I

    .line 98
    invoke-virtual {p0, v2}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 101
    invoke-static {p1}, Lcom/umeng/fb/res/d;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->E:I

    .line 102
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->s:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->s:I

    .line 110
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->t:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->t:I

    .line 111
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->u:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->u:I

    .line 112
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->v:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->v:I

    .line 113
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->w:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->w:I

    .line 114
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->x:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->x:I

    .line 115
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    int-to-float v1, v1

    invoke-static {v6, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    .line 119
    sget-object v0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    .line 122
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->z:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->z:I

    .line 124
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->F:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->F:Ljava/util/Locale;

    .line 140
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/fb/widget/PagerSlidingTabStrip;F)F
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->k:F

    return p1
.end method

.method static synthetic a(Lcom/umeng/fb/widget/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/fb/widget/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    .line 204
    return-void
.end method

.method private a(ILandroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 208
    new-instance v0, Lcom/umeng/fb/widget/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/fb/widget/PagerSlidingTabStrip$2;-><init>(Lcom/umeng/fb/widget/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->w:I

    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->w:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 216
    iget-object v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->a(ILandroid/view/View;)V

    .line 195
    return-void
.end method

.method static synthetic a(Lcom/umeng/fb/widget/PagerSlidingTabStrip;II)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->b(II)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/fb/widget/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    return v0
.end method

.method static synthetic b(Lcom/umeng/fb/widget/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->j:I

    return p1
.end method

.method private b(II)V
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->h:I

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 259
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 260
    :cond_2
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->s:I

    sub-int/2addr v0, v1

    .line 263
    :cond_3
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->D:I

    if-eq v0, v1, :cond_0

    .line 264
    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->D:I

    .line 265
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/fb/widget/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 221
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->h:I

    if-ge v1, v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    iget v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->E:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 229
    check-cast v0, Landroid/widget/TextView;

    .line 230
    iget v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    iget-object v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->B:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->C:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 232
    iget v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->z:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-boolean v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->r:Z

    if-eqz v3, :cond_0

    .line 237
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    .line 238
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 243
    :cond_0
    :goto_1
    iget v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->j:I

    if-ne v1, v3, :cond_1

    .line 244
    iget v3, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->A:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->F:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 249
    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/umeng/fb/widget/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->h:I

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->h:I

    if-ge v1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/fb/widget/PagerSlidingTabStrip$a;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/umeng/fb/widget/PagerSlidingTabStrip$a;

    invoke-interface {v0, v1}, Lcom/umeng/fb/widget/PagerSlidingTabStrip$a;->a(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->a(II)V

    .line 164
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 176
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/umeng/fb/widget/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip$1;-><init>(Lcom/umeng/fb/widget/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 186
    return-void
.end method

.method public a(Landroid/graphics/Typeface;I)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->B:Landroid/graphics/Typeface;

    .line 486
    iput p2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->C:I

    .line 487
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 488
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->r:Z

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->p:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->v:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->n:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->t:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->s:I

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->A:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->q:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->E:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->w:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->z:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->o:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->u:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 272
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->h:I

    if-nez v0, :cond_1

    .line 312
    :cond_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getHeight()I

    move-result v7

    .line 281
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->u:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 285
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    .line 290
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v3, v2

    .line 293
    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->k:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->h:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 295
    iget-object v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 297
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 299
    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->k:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->k:F

    sub-float v2, v6, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 300
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->k:F

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->k:F

    sub-float v2, v6, v2

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 303
    :goto_0
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->t:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->h:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->v:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->v:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->m:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 308
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 510
    check-cast p1, Lcom/umeng/fb/widget/PagerSlidingTabStrip$SavedState;

    .line 511
    invoke-virtual {p1}, Lcom/umeng/fb/widget/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 512
    iget v0, p1, Lcom/umeng/fb/widget/PagerSlidingTabStrip$SavedState;->a:I

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    .line 513
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->requestLayout()V

    .line 514
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 519
    new-instance v1, Lcom/umeng/fb/widget/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 520
    iget v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->i:I

    iput v0, v1, Lcom/umeng/fb/widget/PagerSlidingTabStrip$SavedState;->a:I

    .line 521
    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->r:Z

    .line 445
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .prologue
    .line 390
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->p:I

    .line 391
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 392
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->p:I

    .line 396
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 397
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 413
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->v:I

    .line 414
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 415
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .prologue
    .line 353
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->n:I

    .line 354
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 355
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->n:I

    .line 359
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 360
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .prologue
    .line 367
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->t:I

    .line 368
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 369
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 156
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .prologue
    .line 422
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->s:I

    .line 423
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 424
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0

    .prologue
    .line 471
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->A:I

    .line 472
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 473
    return-void
.end method

.method public setSelectedTextColorResource(I)V
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->A:I

    .line 477
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 478
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->q:Z

    .line 432
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->a()V

    .line 433
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .prologue
    .line 491
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->E:I

    .line 492
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 493
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .prologue
    .line 500
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->w:I

    .line 501
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 502
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 457
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->z:I

    .line 458
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 459
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->z:I

    .line 463
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 464
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 448
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->y:I

    .line 449
    invoke-direct {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->c()V

    .line 450
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .prologue
    .line 376
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->o:I

    .line 377
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 378
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->o:I

    .line 382
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 383
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .prologue
    .line 404
    iput p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->u:I

    .line 405
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->invalidate()V

    .line 406
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    .line 145
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->e:Lcom/umeng/fb/widget/PagerSlidingTabStrip$b;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/umeng/fb/widget/PagerSlidingTabStrip;->a()V

    .line 152
    return-void
.end method
