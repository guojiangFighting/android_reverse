.class public Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;
.super Ljava/lang/Object;
.source "SlideDateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    }
.end annotation


# static fields
.field public static final HOLO_DARK:I = 0x1

.field public static final HOLO_LIGHT:I = 0x2


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mIndicatorColor:I

.field private mInitialDate:Ljava/util/Date;

.field private mIs24HourTime:Z

.field private mIsClientSpecified24HourTime:Z

.field private mIsOnlyTime:Z

.field private mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

.field private mMaxDate:Ljava/util/Date;

.field private mMinDate:Ljava/util/Date;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 48
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string v2, "tagSlideDateTimeDialogFragment"

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 51
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setIsClientSpecified24HourTime(Z)V

    return-void
.end method

.method private setIsClientSpecified24HourTime(Z)V
    .locals 0
    .param p1, "isClientSpecified24HourTime"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIsClientSpecified24HourTime:Z

    .line 115
    return-void
.end method


# virtual methods
.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIndicatorColor:I

    .line 161
    return-void
.end method

.method public setInitialDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "initialDate"    # Ljava/util/Date;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mInitialDate:Ljava/util/Date;

    .line 86
    return-void
.end method

.method public setIs24HourTime(Z)V
    .locals 1
    .param p1, "is24HourTime"    # Z

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setIsClientSpecified24HourTime(Z)V

    .line 135
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIs24HourTime:Z

    .line 136
    return-void
.end method

.method public setIsOnlyTime(Z)V
    .locals 0
    .param p1, "isOnlyTime"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIsOnlyTime:Z

    .line 140
    return-void
.end method

.method public setListener(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    .line 71
    return-void
.end method

.method public setMaxDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "maxDate"    # Ljava/util/Date;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mMaxDate:Ljava/util/Date;

    .line 110
    return-void
.end method

.method public setMinDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "minDate"    # Ljava/util/Date;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mMinDate:Ljava/util/Date;

    .line 98
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mTheme:I

    .line 151
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempting to bind null listener to SlideDateTimePicker"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mInitialDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setInitialDate(Ljava/util/Date;)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mListener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mInitialDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mMinDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mMaxDate:Ljava/util/Date;

    iget-boolean v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIsClientSpecified24HourTime:Z

    iget-boolean v5, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIs24HourTime:Z

    iget-boolean v6, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIsOnlyTime:Z

    iget v7, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mTheme:I

    iget v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mIndicatorColor:I

    .line 179
    invoke-static/range {v0 .. v8}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->newInstance(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZII)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    move-result-object v9

    .line 189
    .local v9, "dialogFragment":Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "tagSlideDateTimeDialogFragment"

    invoke-virtual {v9, v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 191
    return-void
.end method
