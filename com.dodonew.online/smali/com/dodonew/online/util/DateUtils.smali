.class public Lcom/dodonew/online/util/DateUtils;
.super Landroid/text/format/DateUtils;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/util/DateUtils$DifferenceMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/text/format/DateUtils;-><init>()V

    .line 21
    return-void
.end method

.method public static calculateDaysInMonth(I)I
    .locals 1
    .param p0, "month"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/dodonew/online/util/DateUtils;->calculateDaysInMonth(II)I

    move-result v0

    return v0
.end method

.method public static calculateDaysInMonth(II)I
    .locals 11
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 209
    const/4 v4, 0x7

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v1, v6

    const-string v4, "3"

    aput-object v4, v1, v7

    const-string v4, "5"

    aput-object v4, v1, v8

    const-string v4, "7"

    aput-object v4, v1, v9

    const-string v4, "8"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string v5, "10"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "12"

    aput-object v5, v1, v4

    .line 210
    .local v1, "bigMonths":[Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "4"

    aput-object v4, v3, v6

    const-string v4, "6"

    aput-object v4, v3, v7

    const-string v4, "9"

    aput-object v4, v3, v8

    const-string v4, "11"

    aput-object v4, v3, v9

    .line 211
    .local v3, "littleMonths":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, "bigList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 214
    .local v2, "littleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    const/16 v4, 0x1f

    .line 226
    :goto_0
    return v4

    .line 216
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    const/16 v4, 0x1e

    goto :goto_0

    .line 219
    :cond_1
    if-gtz p0, :cond_2

    .line 220
    const/16 v4, 0x1d

    goto :goto_0

    .line 223
    :cond_2
    rem-int/lit8 v4, p0, 0x4

    if-nez v4, :cond_3

    rem-int/lit8 v4, p0, 0x64

    if-nez v4, :cond_4

    :cond_3
    rem-int/lit16 v4, p0, 0x190

    if-nez v4, :cond_5

    .line 224
    :cond_4
    const/16 v4, 0x1d

    goto :goto_0

    .line 226
    :cond_5
    const/16 v4, 0x1c

    goto :goto_0
.end method

.method public static calculateDifference(JJLcom/dodonew/online/util/DateUtils$DifferenceMode;)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J
    .param p4, "mode"    # Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    .prologue
    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1, p4}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/dodonew/online/util/DateUtils$DifferenceMode;)J
    .locals 4
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;
    .param p2, "mode"    # Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;)[J

    move-result-object v0

    .line 147
    .local v0, "different":[J
    sget-object v1, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Minute:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-virtual {p2, v1}, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    .line 154
    :goto_0
    return-wide v2

    .line 149
    :cond_0
    sget-object v1, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Hour:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-virtual {p2, v1}, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v1, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Day:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-virtual {p2, v1}, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    goto :goto_0

    .line 154
    :cond_2
    const/4 v1, 0x3

    aget-wide v2, v0, v1

    goto :goto_0
.end method

.method public static calculateDifference(J)[J
    .locals 20
    .param p0, "differentMilliSeconds"    # J

    .prologue
    .line 176
    const-wide/16 v16, 0x3e8

    .line 177
    .local v16, "secondsInMilli":J
    const-wide/16 v18, 0x3c

    mul-long v14, v16, v18

    .line 178
    .local v14, "minutesInMilli":J
    const-wide/16 v18, 0x3c

    mul-long v12, v14, v18

    .line 179
    .local v12, "hoursInMilli":J
    const-wide/16 v18, 0x18

    mul-long v2, v12, v18

    .line 180
    .local v2, "daysInMilli":J
    div-long v4, p0, v2

    .line 181
    .local v4, "elapsedDays":J
    rem-long p0, p0, v2

    .line 182
    div-long v6, p0, v12

    .line 183
    .local v6, "elapsedHours":J
    rem-long p0, p0, v12

    .line 184
    div-long v8, p0, v14

    .line 185
    .local v8, "elapsedMinutes":J
    rem-long p0, p0, v14

    .line 186
    div-long v10, p0, v16

    .line 187
    .local v10, "elapsedSeconds":J
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v4, v18, v19

    const/16 v19, 0x1

    aput-wide v6, v18, v19

    const/16 v19, 0x2

    aput-wide v8, v18, v19

    const/16 v19, 0x3

    aput-wide v10, v18, v19

    return-object v18
.end method

.method public static calculateDifference(Ljava/util/Date;Ljava/util/Date;)[J
    .locals 4
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(J)[J

    move-result-object v0

    return-object v0
.end method

.method public static calculateDifferentDay(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .prologue
    .line 122
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Day:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(JJLcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentDay(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 78
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Day:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentHour(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .prologue
    .line 111
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Hour:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(JJLcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentHour(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 67
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Hour:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentMinute(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .prologue
    .line 100
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Minute:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(JJLcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentMinute(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 56
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Minute:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentSecond(JJ)J
    .locals 2
    .param p0, "startTimeMillis"    # J
    .param p2, "endTimeMillis"    # J

    .prologue
    .line 89
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Second:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(JJLcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateDifferentSecond(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 45
    sget-object v0, Lcom/dodonew/online/util/DateUtils$DifferenceMode;->Second:Lcom/dodonew/online/util/DateUtils$DifferenceMode;

    invoke-static {p0, p1, v0}, Lcom/dodonew/online/util/DateUtils;->calculateDifference(Ljava/util/Date;Ljava/util/Date;Lcom/dodonew/online/util/DateUtils$DifferenceMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fillZero(I)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 239
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isSameDay(Ljava/util/Date;)Z
    .locals 7
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    if-nez p0, :cond_0

    .line 252
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "date is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 255
    .local v1, "nowCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 256
    .local v0, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 257
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 259
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lcom/dodonew/online/util/DateUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "dataFormat"    # Ljava/lang/String;

    .prologue
    .line 272
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 274
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v3

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
