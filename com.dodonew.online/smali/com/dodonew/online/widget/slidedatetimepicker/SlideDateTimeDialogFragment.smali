.class public Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SlideDateTimeDialogFragment.java"

# interfaces
.implements Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$DateChangedListener;
.implements Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final TAG_SLIDE_DATE_TIME_DIALOG_FRAGMENT:Ljava/lang/String; = "tagSlideDateTimeDialogFragment"

.field private static mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;


# instance fields
.field private isOnlyTime:Z

.field private mButtonHorizontalDivider:Landroid/view/View;

.field private mButtonVerticalDivider:Landroid/view/View;

.field private mCalendar:Ljava/util/Calendar;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDateFlags:I

.field private mIndicatorColor:I

.field private mInitialDate:Ljava/util/Date;

.field private mIs24HourTime:Z

.field private mIsClientSpecified24HourTime:Z

.field private mMaxDate:Ljava/util/Date;

.field private mMinDate:Ljava/util/Date;

.field private mOkButton:Landroid/widget/Button;

.field private mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

.field private mTheme:I

.field private mViewPager:Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;

.field private mViewPagerAdapter:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->isOnlyTime:Z

    .line 61
    const v0, 0x80012

    iput v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mDateFlags:I

    .line 68
    return-void
.end method

.method static synthetic access$000()Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->isOnlyTime:Z

    return v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 37
    iget v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mTheme:I

    return v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIsClientSpecified24HourTime:Z

    return v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIs24HourTime:Z

    return v0
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mMinDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mMaxDate:Ljava/util/Date;

    return-object v0
.end method

.method private customizeViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0c0039

    .line 188
    iget v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mTheme:I

    if-ne v1, v4, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 194
    .local v0, "lineColor":I
    :goto_0
    iget v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mTheme:I

    packed-switch v1, :pswitch_data_0

    .line 202
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mButtonHorizontalDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mButtonVerticalDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 207
    :goto_1
    iget v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIndicatorColor:I

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    new-array v2, v4, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIndicatorColor:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 209
    :cond_0
    return-void

    .line 190
    .end local v0    # "lineColor":I
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 197
    .restart local v0    # "lineColor":I
    :pswitch_0
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mButtonHorizontalDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mButtonVerticalDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initButtons()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$1;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$2;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method private initTabs()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->updateDateTab()V

    .line 225
    iget-boolean v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->isOnlyTime:Z

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->updateTimeTab()V

    .line 229
    :cond_0
    return-void
.end method

.method private initViewPager()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mViewPagerAdapter:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;

    .line 213
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mViewPager:Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mViewPagerAdapter:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    const v1, 0x7f030073

    const v2, 0x7f0d01b0

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setCustomTabView(II)V

    .line 218
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mViewPager:Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 219
    return-void
.end method

.method public static newInstance(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZII)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;
    .locals 3
    .param p0, "listener"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;
    .param p1, "initialDate"    # Ljava/util/Date;
    .param p2, "minDate"    # Ljava/util/Date;
    .param p3, "maxDate"    # Ljava/util/Date;
    .param p4, "isClientSpecified24HourTime"    # Z
    .param p5, "is24HourTime"    # Z
    .param p6, "isOnlyTime"    # Z
    .param p7, "theme"    # I
    .param p8, "indicatorColor"    # I

    .prologue
    .line 89
    sput-object p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    .line 92
    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-direct {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;-><init>()V

    .line 95
    .local v1, "dialogFragment":Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "initialDate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    const-string v2, "minDate"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    const-string v2, "maxDate"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    const-string v2, "isClientSpecified24HourTime"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    const-string v2, "is24HourTime"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    const-string v2, "isOnlyTime"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string v2, "theme"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v2, "indicatorColor"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    return-object v1
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    const v0, 0x7f0d01f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mViewPager:Lcom/dodonew/online/widget/slidedatetimepicker/CustomViewPager;

    .line 180
    const v0, 0x7f0d01f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    .line 181
    const v0, 0x7f0d01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mButtonHorizontalDivider:Landroid/view/View;

    .line 182
    const v0, 0x7f0d01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mButtonVerticalDivider:Landroid/view/View;

    .line 183
    const v0, 0x7f0d01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 184
    const v0, 0x7f0d01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 185
    return-void
.end method

.method private unpackBundle()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "initialDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mInitialDate:Ljava/util/Date;

    .line 169
    const-string v1, "minDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mMinDate:Ljava/util/Date;

    .line 170
    const-string v1, "maxDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mMaxDate:Ljava/util/Date;

    .line 171
    const-string v1, "isClientSpecified24HourTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIsClientSpecified24HourTime:Z

    .line 172
    const-string v1, "is24HourTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIs24HourTime:Z

    .line 173
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mTheme:I

    .line 174
    const-string v1, "isOnlyTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->isOnlyTime:Z

    .line 175
    const-string v1, "indicatorColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIndicatorColor:I

    .line 176
    return-void
.end method

.method private updateDateTab()V
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string v4, "MM\u6708dd\u65e5"

    invoke-static {v2, v3, v4}, Lcom/dodonew/online/util/Utils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setTabText(ILjava/lang/String;)V

    .line 300
    return-void
.end method

.method private updateTimeTab()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 304
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIsClientSpecified24HourTime:Z

    if-eqz v1, :cond_1

    .line 307
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mIs24HourTime:Z

    if-eqz v1, :cond_0

    .line 308
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setTabText(ILjava/lang/String;)V

    .line 319
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v0    # "formatter":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setTabText(ILjava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mSlidingTabLayout:Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    .line 317
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {v1, v6, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlidingTabLayout;->setTabText(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 332
    sget-object v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener no longer exists in onCancel()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    sget-object v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;->onDateTimeCancel()V

    .line 338
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x1030075

    const/4 v2, 0x1

    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->setRetainInstance(Z)V

    .line 123
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->unpackBundle()V

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mInitialDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 128
    iget v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mTheme:I

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-virtual {p0, v2, v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->setStyle(II)V

    .line 138
    :goto_0
    return-void

    .line 130
    :pswitch_0
    const v0, 0x1030071

    invoke-virtual {p0, v2, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->setStyle(II)V

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->setStyle(II)V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    const v1, 0x7f0300ac

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->setupViews(Landroid/view/View;)V

    .line 145
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->customizeViews()V

    .line 146
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->initViewPager()V

    .line 147
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->initTabs()V

    .line 148
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->initButtons()V

    .line 150
    return-object v0
.end method

.method public onDateChanged(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 276
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->updateDateTab()V

    .line 277
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 162
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 163
    return-void
.end method

.method public onTimeChanged(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 291
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 292
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->updateTimeTab()V

    .line 293
    return-void
.end method
