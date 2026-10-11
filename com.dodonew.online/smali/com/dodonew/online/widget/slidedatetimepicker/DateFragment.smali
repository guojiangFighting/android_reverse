.class public Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;
.super Landroid/support/v4/app/Fragment;
.source "DateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$DateChangedListener;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$DateChangedListener;

.field private mDatePicker:Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$DateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$DateChangedListener;

    return-object v0
.end method

.method public static final newInstance(IIIILjava/util/Date;Ljava/util/Date;)Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;
    .locals 3
    .param p0, "theme"    # I
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "minDate"    # Ljava/util/Date;
    .param p5, "maxDate"    # Ljava/util/Date;

    .prologue
    .line 80
    new-instance v1, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;

    invoke-direct {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;-><init>()V

    .line 82
    .local v1, "f":Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "theme"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v2, "year"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v2, "month"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v2, "day"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v2, "minDate"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    const-string v2, "maxDate"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$DateChangedListener;

    iput-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->mCallback:Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$DateChangedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Calling fragment must implement DateFragment.DateChangedListener interface"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "theme"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 102
    .local v7, "theme":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "year"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, "initialYear":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "month"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "initialMonth":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "day"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, "initialDay":I
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "minDate"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 106
    .local v6, "minDate":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "maxDate"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    .line 114
    .local v5, "maxDate":Ljava/util/Date;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 115
    invoke-virtual {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    const v9, 0x103006b

    :goto_0
    invoke-direct {v0, v10, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 120
    .local v0, "contextThemeWrapper":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 122
    .local v4, "localInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030085

    const/4 v10, 0x0

    invoke-virtual {v4, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 124
    .local v8, "v":Landroid/view/View;
    const v9, 0x7f0d01c1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;

    iput-object v9, p0, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->mDatePicker:Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;

    .line 126
    iget-object v9, p0, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->mDatePicker:Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;

    const/high16 v10, 0x60000

    invoke-virtual {v9, v10}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;->setDescendantFocusability(I)V

    .line 127
    iget-object v9, p0, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->mDatePicker:Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;

    new-instance v10, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$1;

    invoke-direct {v10, p0}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment$1;-><init>(Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;)V

    invoke-virtual {v9, v3, v2, v1, v10}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 141
    if-eqz v6, :cond_0

    .line 142
    iget-object v9, p0, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->mDatePicker:Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;->setMinDate(J)V

    .line 144
    :cond_0
    if-eqz v5, :cond_1

    .line 145
    iget-object v9, p0, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->mDatePicker:Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/dodonew/online/widget/slidedatetimepicker/CustomDatePicker;->setMaxDate(J)V

    .line 147
    :cond_1
    return-object v8

    .line 115
    .end local v0    # "contextThemeWrapper":Landroid/content/Context;
    .end local v4    # "localInflater":Landroid/view/LayoutInflater;
    .end local v8    # "v":Landroid/view/View;
    :cond_2
    const v9, 0x103006e

    goto :goto_0
.end method
