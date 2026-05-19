.class public final Lcom/oplus/utrace/hlog/UploadParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/UploadParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/hlog/UploadParams$Companion;


# instance fields
.field private final business:Ljava/lang/String;

.field private final createTime:J

.field private final endTime:J

.field private final maxFileSize:J

.field private final sendFrom:Ljava/lang/String;

.field private final simFdTimeout:Z

.field private final startTime:J

.field private final traceId:J

.field private final uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

.field private final useWifi:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/UploadParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/UploadParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/UploadParams;->Companion:Lcom/oplus/utrace/hlog/UploadParams$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJZJLcom/oplus/utrace/hlog/UploadFlag;ZLjava/lang/String;)V
    .registers 15

    const-string v0, "business"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadFlag"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendFrom"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    iput-wide p2, p0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    iput-wide p4, p0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    iput-wide p6, p0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    iput-boolean p8, p0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    iput-wide p9, p0, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    iput-object p11, p0, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    iput-boolean p12, p0, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    iput-object p13, p0, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/utrace/hlog/UploadParams;->createTime:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/hlog/UploadParams;Ljava/lang/String;JJJZJLcom/oplus/utrace/hlog/UploadFlag;ZLjava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/hlog/UploadParams;
    .registers 30

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-wide v3, v0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    goto :goto_14

    :cond_12
    move-wide/from16 v3, p2

    :goto_14
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1b

    iget-wide v5, v0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    goto :goto_1d

    :cond_1b
    move-wide/from16 v5, p4

    :goto_1d
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_24

    iget-wide v7, v0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    goto :goto_26

    :cond_24
    move-wide/from16 v7, p6

    :goto_26
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_2d

    iget-boolean v9, v0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    goto :goto_2f

    :cond_2d
    move/from16 v9, p8

    :goto_2f
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_36

    iget-wide v10, v0, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    goto :goto_38

    :cond_36
    move-wide/from16 v10, p9

    :goto_38
    and-int/lit8 v12, v1, 0x40

    if-eqz v12, :cond_3f

    iget-object v12, v0, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    goto :goto_41

    :cond_3f
    move-object/from16 v12, p11

    :goto_41
    and-int/lit16 v13, v1, 0x80

    if-eqz v13, :cond_48

    iget-boolean v13, v0, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    goto :goto_4a

    :cond_48
    move/from16 v13, p12

    :goto_4a
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_51

    iget-object v1, v0, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    goto :goto_53

    :cond_51
    move-object/from16 v1, p13

    :goto_53
    move-object p1, v2

    move-wide/from16 p2, v3

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move/from16 p8, v9

    move-wide/from16 p9, v10

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/oplus/utrace/hlog/UploadParams;->copy(Ljava/lang/String;JJJZJLcom/oplus/utrace/hlog/UploadFlag;ZLjava/lang/String;)Lcom/oplus/utrace/hlog/UploadParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    return-wide v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    return-wide v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    return-wide v0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    return p0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    return-wide v0
.end method

.method public final component7()Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    return-object p0
.end method

.method public final component8()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    return p0
.end method

.method public final component9()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;JJJZJLcom/oplus/utrace/hlog/UploadFlag;ZLjava/lang/String;)Lcom/oplus/utrace/hlog/UploadParams;
    .registers 29

    const-string v0, "business"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadFlag"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendFrom"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/utrace/hlog/UploadParams;

    move-object v1, v0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Lcom/oplus/utrace/hlog/UploadParams;-><init>(Ljava/lang/String;JJJZJLcom/oplus/utrace/hlog/UploadFlag;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/hlog/UploadParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/hlog/UploadParams;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    iget-wide v5, p1, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    iget-wide v5, p1, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget-wide v3, p0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    iget-wide v5, p1, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_32

    return v2

    :cond_32
    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    iget-boolean v3, p1, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-wide v3, p0, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    iget-wide v5, p1, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    iget-object v3, p1, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    if-eq v1, v3, :cond_49

    return v2

    :cond_49
    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    iget-boolean v3, p1, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    if-eq v1, v3, :cond_50

    return v2

    :cond_50
    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    return v2

    :cond_5b
    return v0
.end method

.method public final getBusiness()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreateTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->createTime:J

    return-wide v0
.end method

.method public final getEndTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    return-wide v0
.end method

.method public final getMaxFileSize()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    return-wide v0
.end method

.method public final getSendFrom()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    return-object p0
.end method

.method public final getSimFdTimeout()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    return p0
.end method

.method public final getStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    return-wide v0
.end method

.method public final getTraceId()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    return-wide v0
.end method

.method public final getUploadFlag()Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    return-object p0
.end method

.method public final getUseWifi()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    move v1, v2

    :cond_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    const/16 v1, 0x1f

    invoke-static {v3, v4, v0, v1}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    if-eqz v0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v0

    :goto_3c
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toKey()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "UploadParams(business="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->business:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->traceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", useWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->useWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->maxFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->uploadFlag:Lcom/oplus/utrace/hlog/UploadFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", simFdTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/UploadParams;->simFdTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sendFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/utrace/hlog/UploadParams;->sendFrom:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
