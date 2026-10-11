.class public Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
.super Ljava/lang/Object;
.source "SlideDateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private fm:Landroid/support/v4/app/FragmentManager;

.field private indicatorColor:I

.field private initialDate:Ljava/util/Date;

.field private is24HourTime:Z

.field private isClientSpecified24HourTime:Z

.field private isOnlyTime:Z

.field private listener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

.field private maxDate:Ljava/util/Date;

.field private minDate:Ljava/util/Date;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->fm:Landroid/support/v4/app/FragmentManager;

    .line 216
    return-void
.end method


# virtual methods
.method public build()Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 299
    .local v0, "picker":Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->listener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setListener(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;)V

    .line 300
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->initialDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setInitialDate(Ljava/util/Date;)V

    .line 301
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->minDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setMinDate(Ljava/util/Date;)V

    .line 302
    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->maxDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setMaxDate(Ljava/util/Date;)V

    .line 303
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->isClientSpecified24HourTime:Z

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->access$000(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;Z)V

    .line 304
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->is24HourTime:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setIs24HourTime(Z)V

    .line 305
    iget-boolean v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->isOnlyTime:Z

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setIsOnlyTime(Z)V

    .line 306
    iget v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->theme:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setTheme(I)V

    .line 307
    iget v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->indicatorColor:I

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker;->setIndicatorColor(I)V

    .line 309
    return-object v0
.end method

.method public setIndicatorColor(I)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->indicatorColor:I

    .line 285
    return-object p0
.end method

.method public setInitialDate(Ljava/util/Date;)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 0
    .param p1, "initialDate"    # Ljava/util/Date;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->initialDate:Ljava/util/Date;

    .line 233
    return-object p0
.end method

.method public setIs24HourTime(Z)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 1
    .param p1, "is24HourTime"    # Z

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->isClientSpecified24HourTime:Z

    .line 262
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->is24HourTime:Z

    .line 263
    return-object p0
.end method

.method public setIsOnlyTime(Z)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 0
    .param p1, "isOnlyTime"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->isOnlyTime:Z

    .line 268
    return-object p0
.end method

.method public setListener(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->listener:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;

    .line 224
    return-object p0
.end method

.method public setMaxDate(Ljava/util/Date;)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 0
    .param p1, "maxDate"    # Ljava/util/Date;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->maxDate:Ljava/util/Date;

    .line 253
    return-object p0
.end method

.method public setMinDate(Ljava/util/Date;)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 0
    .param p1, "minDate"    # Ljava/util/Date;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->minDate:Ljava/util/Date;

    .line 244
    return-object p0
.end method

.method public setTheme(I)Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimePicker$Builder;->theme:I

    .line 276
    return-object p0
.end method
