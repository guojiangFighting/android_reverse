.class public Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "OnlyTimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;
    }
.end annotation


# instance fields
.field private hour:I

.field private mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mOkButton:Landroid/widget/Button;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private minute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .prologue
    .line 30
    iget v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->hour:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->hour:I

    return p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .prologue
    .line 30
    iget v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->minute:I

    return v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->minute:I

    return p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Landroid/widget/TimePicker;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method private fixTimePickerBug18982()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "amPmView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Landroid/widget/NumberPicker;

    .end local v0    # "amPmView":Landroid/view/View;
    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$2;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 218
    :cond_0
    return-void
.end method

.method private initButtons()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$4;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$4;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method public static final newInstance(IIIZZ)Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;
    .locals 3
    .param p0, "theme"    # I
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "isClientSpecified24HourTime"    # Z
    .param p4, "is24HourTime"    # Z

    .prologue
    .line 94
    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-direct {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;-><init>()V

    .line 96
    .local v1, "f":Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "theme"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v2, "hour"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v2, "minute"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v2, "isClientSpecified24HourTime"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    const-string v2, "is24HourTime"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 71
    :try_start_0
    check-cast p1, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement TimeFragment.TimeChangedListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "theme"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 115
    .local v6, "theme":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "hour"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, "initialHour":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "minute"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 117
    .local v2, "initialMinute":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "isClientSpecified24HourTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 118
    .local v4, "isClientSpecified24HourTime":Z
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "is24HourTime"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 126
    .local v3, "is24HourTime":Z
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 127
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    const v8, 0x103006b

    :goto_0
    invoke-direct {v0, v9, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v0, "contextThemeWrapper":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 134
    .local v5, "localInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f03008c

    const/4 v9, 0x0

    invoke-virtual {v5, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 136
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f0d01d7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TimePicker;

    iput-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 138
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/high16 v9, 0x60000

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 139
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    new-instance v9, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;

    invoke-direct {v9, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$1;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 149
    const v8, 0x7f0d01db

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mOkButton:Landroid/widget/Button;

    .line 150
    const v8, 0x7f0d01d9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mCancelButton:Landroid/widget/Button;

    .line 151
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->initButtons()V

    .line 154
    if-eqz v4, :cond_2

    .line 156
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 166
    :goto_1
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 167
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 171
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xf

    if-gt v8, v9, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->fixTimePickerBug18982()V

    .line 177
    :cond_0
    return-object v7

    .line 127
    .end local v0    # "contextThemeWrapper":Landroid/content/Context;
    .end local v5    # "localInflater":Landroid/view/LayoutInflater;
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    const v8, 0x103006e

    goto :goto_0

    .line 162
    .restart local v0    # "contextThemeWrapper":Landroid/content/Context;
    .restart local v5    # "localInflater":Landroid/view/LayoutInflater;
    .restart local v7    # "v":Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 163
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 162
    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_1
.end method
