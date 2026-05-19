.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessageConverter;
    }
.end annotation


# instance fields
.field private delayDisplaySecond:I

.field private displayTimeInterval:I

.field private lastDay:I

.field private maxDTOneDay:I

.field private remainderDTOneDay:I

.field private singleAppTotalDisplayTimes:I

.field private totalDisplayTimes:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;-><init>(IIIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    iput p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    iput p3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    iput p4, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    iput p5, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    iput p6, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    iput p7, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    iput p8, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V
    .registers 12

    const-string/jumbo v0, "toastMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    iget v4, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    iget v5, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    iget v6, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    iget v7, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    iget v8, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    iget v9, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;-><init>(IIIIIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;IIIIIIIIILjava/lang/Object;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget v2, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget v3, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    goto :goto_1b

    :cond_1a
    move v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget v5, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget v6, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    goto :goto_2b

    :cond_2a
    move v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget v7, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    goto :goto_33

    :cond_32
    move v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget v8, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    goto :goto_3c

    :cond_3a
    move/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move p6, v7

    move/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->copy(IIIIIIII)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    return p0
.end method

.method public final component5()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    return p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    return p0
.end method

.method public final copy(IIIIIIII)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;
    .registers 19

    new-instance v9, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public final copyFrom(Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;)V
    .registers 3

    const-string/jumbo v0, "toastMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    iget v0, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    iget v0, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    iget v0, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    iget v0, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    iget v0, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    iget v0, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    iput v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    iget p1, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    if-eq v1, v3, :cond_3d

    return v2

    :cond_3d
    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    iget p1, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    if-eq p0, p1, :cond_44

    return v2

    :cond_44
    return v0
.end method

.method public final getDelayDisplaySecond()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    return p0
.end method

.method public final getDisplayTimeInterval()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    return p0
.end method

.method public final getLastDay()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    return p0
.end method

.method public final getMaxDTOneDay()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    return p0
.end method

.method public final getRemainderDTOneDay()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    return p0
.end method

.method public final getSingleAppTotalDisplayTimes()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    return p0
.end method

.method public final getTotalDisplayTimes()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    return p0
.end method

.method public final getVersion()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setDelayDisplaySecond(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    return-void
.end method

.method public final setDisplayTimeInterval(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    return-void
.end method

.method public final setLastDay(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    return-void
.end method

.method public final setMaxDTOneDay(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    return-void
.end method

.method public final setRemainderDTOneDay(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    return-void
.end method

.method public final setSingleAppTotalDisplayTimes(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    return-void
.end method

.method public final setTotalDisplayTimes(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    return-void
.end method

.method public final setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "version = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalDisplayTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->totalDisplayTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , remainderDTOneDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->remainderDTOneDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->lastDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "singleAppTotalDisplayTimes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->singleAppTotalDisplayTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxDTOneDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->maxDTOneDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "delayDisplaySecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->delayDisplaySecond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayTimeInterval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/ToastMessage;->displayTimeInterval:I

    const-string v1, ", "

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
