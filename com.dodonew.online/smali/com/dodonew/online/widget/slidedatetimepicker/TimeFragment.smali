.class public Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;
.super Landroid/support/v4/app/Fragment;
.source "TimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;

.field private mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)Landroid/widget/TimePicker;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method private fixTimePickerBug18982()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "amPmView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Landroid/widget/NumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$2;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method public static final newInstance(IIIZZ)Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;
    .locals 3
    .param p0, "theme"    # I
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "isClientSpecified24HourTime"    # Z
    .param p4, "is24HourTime"    # Z

    .prologue
    .line 80
    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    invoke-direct {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;-><init>()V

    .line 82
    .local v1, "f":Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "theme"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v2, "hour"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v2, "minute"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v2, "isClientSpecified24HourTime"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v2, "is24HourTime"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;

    iput-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$TimeChangedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement TimeFragment.TimeChangedListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "theme"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "theme":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "hour"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "initialHour":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "minute"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "initialMinute":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "isClientSpecified24HourTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 104
    .local v4, "isClientSpecified24HourTime":Z
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "is24HourTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 112
    .local v3, "is24HourTime":Z
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 113
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    const v8, 0x103006b

    :goto_0
    invoke-direct {v0, v9, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 118
    .local v0, "contextThemeWrapper":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 120
    .local v5, "localInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030092

    const/4 v9, 0x0

    invoke-virtual {v5, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 122
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f0d01d7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TimePicker;

    iput-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 124
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/high16 v9, 0x60000

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 125
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    new-instance v9, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$1;

    invoke-direct {v9, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment$1;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 136
    if-eqz v4, :cond_2

    .line 138
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 148
    :goto_1
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 149
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 153
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-gt v8, v9, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->fixTimePickerBug18982()V

    .line 159
    :cond_0
    return-object v7

    .line 113
    .end local v0    # "contextThemeWrapper":Landroid/content/Context;
    .end local v5    # "localInflater":Landroid/view/LayoutInflater;
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    const v8, 0x103006e

    goto :goto_0

    .line 144
    .restart local v0    # "contextThemeWrapper":Landroid/content/Context;
    .restart local v5    # "localInflater":Landroid/view/LayoutInflater;
    .restart local v7    # "v":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 145
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 144
    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_1
.end method
