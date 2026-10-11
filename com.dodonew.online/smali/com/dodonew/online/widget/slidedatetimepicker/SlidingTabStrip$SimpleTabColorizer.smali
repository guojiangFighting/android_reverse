.class Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SlidingTabStrip.java"

# interfaces
.implements Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private mDividerColors:[I

.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$1;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDividerColor(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->mDividerColors:[I

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->mDividerColors:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public final getIndicatorColor(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs setDividerColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 207
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->mDividerColors:[I

    .line 208
    return-void
.end method

.method varargs setIndicatorColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 203
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    .line 204
    return-void
.end method
