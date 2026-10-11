.class public Lcom/dodonew/online/widget/picker/DatePicker;
.super Lcom/dodonew/online/widget/picker/WheelPicker;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/picker/DatePicker$OnMonthDayPickListener;,
        Lcom/dodonew/online/widget/picker/DatePicker$OnYearMonthPickListener;,
        Lcom/dodonew/online/widget/picker/DatePicker$OnYearMonthDayPickListener;,
        Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;,
        Lcom/dodonew/online/widget/picker/DatePicker$Mode;
    }
.end annotation


# static fields
.field public static final MONTH_DAY:I = 0x2

.field public static final YEAR_MONTH:I = 0x1

.field public static final YEAR_MONTH_DAY:I


# instance fields
.field private dayLabel:Ljava/lang/String;

.field private days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field private monthLabel:Ljava/lang/String;

.field private months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onDatePickListener:Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;

.field private selectedDayIndex:I

.field private selectedMonthIndex:I

.field private selectedYearIndex:I

.field private yearLabel:Ljava/lang/String;

.field private years:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/picker/DatePicker;-><init>(Landroid/app/Activity;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/picker/WheelPicker;-><init>(Landroid/app/Activity;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    .line 43
    const-string v1, "\u5e74"

    iput-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->yearLabel:Ljava/lang/String;

    const-string v1, "\u6708"

    iput-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->monthLabel:Ljava/lang/String;

    const-string v1, "\u65e5"

    iput-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->dayLabel:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    iput v2, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    iput v2, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    .line 45
    iput v2, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    .line 77
    iput p2, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    .line 78
    const/16 v0, 0x7d0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x802

    if-gt v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/dodonew/online/util/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_1
    const/4 v0, 0x1

    :goto_2
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/dodonew/online/util/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/picker/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 26
    iget v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/dodonew/online/widget/picker/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/picker/DatePicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/picker/DatePicker;->stringToYearMonthDay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/picker/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 26
    iget v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/dodonew/online/widget/picker/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dodonew/online/widget/picker/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 26
    iget v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/dodonew/online/widget/picker/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/dodonew/online/widget/picker/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 26
    iget v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    return v0
.end method

.method static synthetic access$700(Lcom/dodonew/online/widget/picker/DatePicker;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/picker/DatePicker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findItemIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p2, "item"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/dodonew/online/widget/picker/DatePicker$1;

    invoke-direct {v2, p0}, Lcom/dodonew/online/widget/picker/DatePicker$1;-><init>(Lcom/dodonew/online/widget/picker/DatePicker;)V

    invoke-static {p1, v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 127
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :cond_0
    return v0
.end method

.method private stringToYearMonthDay(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 310
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getSelectedDay()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedMonth()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedYear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected makeCenterView()Landroid/view/View;
    .locals 13
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, -0x2

    .line 174
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 176
    const/16 v7, 0x11

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    new-instance v6, Lcom/dodonew/online/widget/WheelView;

    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/dodonew/online/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 178
    .local v6, "yearView":Lcom/dodonew/online/widget/WheelView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textSize:I

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/WheelView;->setTextSize(I)V

    .line 180
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorNormal:I

    iget v8, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorFocus:I

    invoke-virtual {v6, v7, v8}, Lcom/dodonew/online/widget/WheelView;->setTextColor(II)V

    .line 181
    iget-boolean v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->lineVisible:Z

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/WheelView;->setLineVisible(Z)V

    .line 182
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->lineColor:I

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/WheelView;->setLineColor(I)V

    .line 183
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->offset:I

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/WheelView;->setOffset(I)V

    .line 184
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    new-instance v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v5, "yearTextView":Landroid/widget/TextView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorFocus:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->yearLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 190
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->yearLabel:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v4, Lcom/dodonew/online/widget/WheelView;

    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Lcom/dodonew/online/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 194
    .local v4, "monthView":Lcom/dodonew/online/widget/WheelView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Lcom/dodonew/online/widget/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textSize:I

    invoke-virtual {v4, v7}, Lcom/dodonew/online/widget/WheelView;->setTextSize(I)V

    .line 196
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorNormal:I

    iget v8, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorFocus:I

    invoke-virtual {v4, v7, v8}, Lcom/dodonew/online/widget/WheelView;->setTextColor(II)V

    .line 197
    iget-boolean v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->lineVisible:Z

    invoke-virtual {v4, v7}, Lcom/dodonew/online/widget/WheelView;->setLineVisible(Z)V

    .line 198
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->lineColor:I

    invoke-virtual {v4, v7}, Lcom/dodonew/online/widget/WheelView;->setLineColor(I)V

    .line 199
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->offset:I

    invoke-virtual {v4, v7}, Lcom/dodonew/online/widget/WheelView;->setOffset(I)V

    .line 200
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v3, "monthTextView":Landroid/widget/TextView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textSize:I

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 204
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorFocus:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->monthLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 206
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->monthLabel:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    new-instance v1, Lcom/dodonew/online/widget/WheelView;

    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v1, v7}, Lcom/dodonew/online/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v1, "dayView":Lcom/dodonew/online/widget/WheelView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/dodonew/online/widget/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textSize:I

    invoke-virtual {v1, v7}, Lcom/dodonew/online/widget/WheelView;->setTextSize(I)V

    .line 212
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorNormal:I

    iget v8, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorFocus:I

    invoke-virtual {v1, v7, v8}, Lcom/dodonew/online/widget/WheelView;->setTextColor(II)V

    .line 213
    iget-boolean v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->lineVisible:Z

    invoke-virtual {v1, v7}, Lcom/dodonew/online/widget/WheelView;->setLineVisible(Z)V

    .line 214
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->lineColor:I

    invoke-virtual {v1, v7}, Lcom/dodonew/online/widget/WheelView;->setLineColor(I)V

    .line 215
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->offset:I

    invoke-virtual {v1, v7}, Lcom/dodonew/online/widget/WheelView;->setOffset(I)V

    .line 216
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v0, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->activity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "dayTextView":Landroid/widget/TextView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textSize:I

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 220
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->textColorFocus:I

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->dayLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 222
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->dayLabel:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    if-ne v7, v11, :cond_9

    .line 226
    invoke-virtual {v1, v10}, Lcom/dodonew/online/widget/WheelView;->setVisibility(I)V

    .line 227
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_3
    :goto_0
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    if-eq v7, v12, :cond_5

    .line 233
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->yearLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 234
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->yearLabel:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_4
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    if-nez v7, :cond_a

    .line 237
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 241
    :goto_1
    new-instance v7, Lcom/dodonew/online/widget/picker/DatePicker$2;

    invoke-direct {v7, p0, v1}, Lcom/dodonew/online/widget/picker/DatePicker$2;-><init>(Lcom/dodonew/online/widget/picker/DatePicker;Lcom/dodonew/online/widget/WheelView;)V

    invoke-virtual {v6, v7}, Lcom/dodonew/online/widget/WheelView;->setOnWheelViewListener(Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;)V

    .line 259
    :cond_5
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->monthLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 260
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->monthLabel:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_6
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    if-nez v7, :cond_b

    .line 263
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 267
    :goto_2
    new-instance v7, Lcom/dodonew/online/widget/picker/DatePicker$3;

    invoke-direct {v7, p0, v1}, Lcom/dodonew/online/widget/picker/DatePicker$3;-><init>(Lcom/dodonew/online/widget/picker/DatePicker;Lcom/dodonew/online/widget/WheelView;)V

    invoke-virtual {v4, v7}, Lcom/dodonew/online/widget/WheelView;->setOnWheelViewListener(Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;)V

    .line 286
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    if-eq v7, v11, :cond_8

    .line 287
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->dayLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 288
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->dayLabel:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_7
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    if-nez v7, :cond_c

    .line 291
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 295
    :goto_3
    new-instance v7, Lcom/dodonew/online/widget/picker/DatePicker$4;

    invoke-direct {v7, p0}, Lcom/dodonew/online/widget/picker/DatePicker$4;-><init>(Lcom/dodonew/online/widget/picker/DatePicker;)V

    invoke-virtual {v1, v7}, Lcom/dodonew/online/widget/WheelView;->setOnWheelViewListener(Lcom/dodonew/online/widget/WheelView$OnWheelViewListener;)V

    .line 302
    :cond_8
    return-object v2

    .line 228
    :cond_9
    iget v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    if-ne v7, v12, :cond_3

    .line 229
    invoke-virtual {v6, v10}, Lcom/dodonew/online/widget/WheelView;->setVisibility(I)V

    .line 230
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_a
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    iget v8, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    invoke-virtual {v6, v7, v8}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;I)V

    goto :goto_1

    .line 265
    :cond_b
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    iget v8, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    invoke-virtual {v4, v7, v8}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;I)V

    goto :goto_2

    .line 293
    :cond_c
    iget-object v7, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    iget v8, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    invoke-virtual {v1, v7, v8}, Lcom/dodonew/online/widget/WheelView;->setItems(Ljava/util/List;I)V

    goto :goto_3
.end method

.method protected onSubmit()V
    .locals 4

    .prologue
    .line 315
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/DatePicker;->onDatePickListener:Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;

    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/dodonew/online/widget/picker/DatePicker;->getSelectedYear()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "year":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/picker/DatePicker;->getSelectedMonth()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "month":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/dodonew/online/widget/picker/DatePicker;->getSelectedDay()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "day":Ljava/lang/String;
    iget v3, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    packed-switch v3, :pswitch_data_0

    .line 327
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/DatePicker;->onDatePickListener:Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;

    check-cast v3, Lcom/dodonew/online/widget/picker/DatePicker$OnYearMonthDayPickListener;

    invoke-interface {v3, v2, v1, v0}, Lcom/dodonew/online/widget/picker/DatePicker$OnYearMonthDayPickListener;->onDatePicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "month":Ljava/lang/String;
    .end local v2    # "year":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 321
    .restart local v0    # "day":Ljava/lang/String;
    .restart local v1    # "month":Ljava/lang/String;
    .restart local v2    # "year":Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/DatePicker;->onDatePickListener:Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;

    check-cast v3, Lcom/dodonew/online/widget/picker/DatePicker$OnYearMonthPickListener;

    invoke-interface {v3, v2, v1}, Lcom/dodonew/online/widget/picker/DatePicker$OnYearMonthPickListener;->onDatePicked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v3, p0, Lcom/dodonew/online/widget/picker/DatePicker;->onDatePickListener:Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;

    check-cast v3, Lcom/dodonew/online/widget/picker/DatePicker$OnMonthDayPickListener;

    invoke-interface {v3, v1, v0}, Lcom/dodonew/online/widget/picker/DatePicker$OnMonthDayPickListener;->onDatePicked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "yearLabel"    # Ljava/lang/String;
    .param p2, "monthLabel"    # Ljava/lang/String;
    .param p3, "dayLabel"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->yearLabel:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/dodonew/online/widget/picker/DatePicker;->monthLabel:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/dodonew/online/widget/picker/DatePicker;->dayLabel:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setOnDatePickListener(Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->onDatePickListener:Lcom/dodonew/online/widget/picker/DatePicker$OnDatePickListener;

    .line 169
    return-void
.end method

.method public setRange(II)V
    .locals 3
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I

    .prologue
    .line 109
    iget-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 110
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 111
    iget-object v1, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public setSelectedItem(II)V
    .locals 2
    .param p1, "yearOrMonth"    # I
    .param p2, "monthOrDay"    # I

    .prologue
    .line 153
    iget v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/dodonew/online/widget/picker/DatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    .line 155
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/dodonew/online/widget/picker/DatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/dodonew/online/widget/picker/DatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    .line 158
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/dodonew/online/widget/picker/DatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    goto :goto_0
.end method

.method public setSelectedItem(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->years:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/dodonew/online/widget/picker/DatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedYearIndex:I

    .line 142
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->months:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/dodonew/online/widget/picker/DatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedMonthIndex:I

    .line 143
    iget-object v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->days:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p3}, Lcom/dodonew/online/widget/picker/DatePicker;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/picker/DatePicker;->selectedDayIndex:I

    .line 144
    return-void
.end method
