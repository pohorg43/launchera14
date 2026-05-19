.class public final Lcom/oplus/utrace/lib/UTraceRecord;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/lib/UTraceRecord$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/oplus/utrace/lib/UTraceRecord$CREATOR;


# instance fields
.field private current:Lcom/oplus/utrace/lib/NodeID;

.field private endTime:J

.field private hasError:I

.field private info:Ljava/lang/String;

.field private parent:Lcom/oplus/utrace/lib/NodeID;

.field private spanName:Ljava/lang/String;

.field private startTime:J

.field private status:I

.field private traceID:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecord$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/lib/UTraceRecord$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecord;->CREATOR:Lcom/oplus/utrace/lib/UTraceRecord$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 16

    const-string v0, ""

    if-nez p1, :cond_6

    :goto_4
    move-object v3, v0

    goto :goto_e

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    move-object v3, v1

    :goto_e
    const/4 v1, 0x0

    if-nez p1, :cond_13

    move-object v2, v1

    goto :goto_1f

    :cond_13
    const-class v2, Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/utrace/utils/ExceptionProtectUtilKt;->readParcelableSafe(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oplus/utrace/lib/NodeID;

    :goto_1f
    if-nez v2, :cond_26

    new-instance v2, Lcom/oplus/utrace/lib/NodeID;

    invoke-direct {v2}, Lcom/oplus/utrace/lib/NodeID;-><init>()V

    :cond_26
    move-object v4, v2

    if-nez p1, :cond_2b

    move-object v5, v1

    goto :goto_38

    :cond_2b
    const-class v2, Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/utrace/utils/ExceptionProtectUtilKt;->readParcelableSafe(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oplus/utrace/lib/NodeID;

    move-object v5, v2

    :goto_38
    if-nez p1, :cond_3c

    :goto_3a
    move-object v6, v0

    goto :goto_44

    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_3a

    :cond_43
    move-object v6, v2

    :goto_44
    const-wide/16 v7, 0x0

    if-nez p1, :cond_4a

    move-wide v9, v7

    goto :goto_4e

    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    :goto_4e
    if-nez p1, :cond_51

    goto :goto_55

    :cond_51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    :goto_55
    move-wide v11, v7

    if-nez p1, :cond_5a

    move-object v2, v1

    goto :goto_62

    :cond_5a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_62
    if-nez v2, :cond_6b

    sget-object v2, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->getValue()I

    move-result v2

    goto :goto_6f

    :cond_6b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_6f
    move v13, v2

    if-nez p1, :cond_73

    goto :goto_7b

    :cond_73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v0, v2

    :goto_7b
    if-nez p1, :cond_7e

    goto :goto_86

    :cond_7e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_86
    if-nez v1, :cond_8f

    sget-object p1, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->NO_ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result p1

    goto :goto_93

    :cond_8f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_93
    move-object v2, p0

    move-wide v7, v9

    move-wide v9, v11

    move v11, v13

    move-object v12, v0

    move v13, p1

    invoke-direct/range {v2 .. v13}, Lcom/oplus/utrace/lib/UTraceRecord;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;I)V
    .registers 13

    const-string v0, "traceID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    iput-object p3, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    iput-object p4, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    iput-wide p7, p0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    iput p9, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    iput-object p10, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    iput p11, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 28

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_a

    const-string v1, ""

    move-object v12, v1

    goto :goto_c

    :cond_a
    move-object/from16 v12, p10

    :goto_c
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_18

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->NO_ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result v0

    move v13, v0

    goto :goto_1a

    :cond_18
    move/from16 v13, p11

    :goto_1a
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    invoke-direct/range {v2 .. v13}, Lcom/oplus/utrace/lib/UTraceRecord;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/lib/UTraceRecord;Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IILjava/lang/Object;)Lcom/oplus/utrace/lib/UTraceRecord;
    .registers 26

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    goto :goto_24

    :cond_22
    move-object/from16 v5, p4

    :goto_24
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2b

    iget-wide v6, v0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    goto :goto_2d

    :cond_2b
    move-wide/from16 v6, p5

    :goto_2d
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_34

    iget-wide v8, v0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    goto :goto_36

    :cond_34
    move-wide/from16 v8, p7

    :goto_36
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_3d

    iget v10, v0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    goto :goto_3f

    :cond_3d
    move/from16 v10, p9

    :goto_3f
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_46

    iget-object v11, v0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    goto :goto_48

    :cond_46
    move-object/from16 v11, p10

    :goto_48
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4f

    iget v1, v0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    goto :goto_51

    :cond_4f
    move/from16 v1, p11

    :goto_51
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    move/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/oplus/utrace/lib/UTraceRecord;->copy(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;I)Lcom/oplus/utrace/lib/UTraceRecord;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final component3()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    return-wide v0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    return-wide v0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    return p0
.end method

.method public final component8()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;I)Lcom/oplus/utrace/lib/UTraceRecord;
    .registers 25

    const-string v0, "traceID"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecord;

    move-object v1, v0

    move-object/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/oplus/utrace/lib/UTraceRecord;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;I)V

    return-object v0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/lib/UTraceRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/lib/UTraceRecord;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    iget-object v3, p1, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    iget-object v3, p1, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-wide v3, p0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    iget-wide v5, p1, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_41

    return v2

    :cond_41
    iget-wide v3, p0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    iget-wide v5, p1, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4a

    return v2

    :cond_4a
    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    iget v3, p1, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    if-eq v1, v3, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    iget p1, p1, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    if-eq p0, p1, :cond_63

    return v2

    :cond_63
    return v0
.end method

.method public final getCurrent()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final getEndTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    return-wide v0
.end method

.method public final getHasError()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    return p0
.end method

.method public final getInfo()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    return-object p0
.end method

.method public final getParent()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final getSpanName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    return-wide v0
.end method

.method public final getStatus()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    return p0
.end method

.method public final getTraceID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/NodeID;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/oplus/utrace/lib/NodeID;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setCurrent(Lcom/oplus/utrace/lib/NodeID;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public final setEndTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    return-void
.end method

.method public final setHasError(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    return-void
.end method

.method public final setInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    return-void
.end method

.method public final setParent(Lcom/oplus/utrace/lib/NodeID;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public final setSpanName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    return-void
.end method

.method public final setStartTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    return-void
.end method

.method public final setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    return-void
.end method

.method public final setTraceID(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "UTraceRecord(traceID=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/utrace/lib/NodeID;->getSpanID(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    if-nez v1, :cond_25

    const/4 v1, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v1, v2}, Lcom/oplus/utrace/lib/NodeID;->getSpanID(Z)Ljava/lang/String;

    move-result-object v1

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hasError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->traceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->current:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->parent:Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/oplus/utrace/lib/UTraceRecord;->spanName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/oplus/utrace/lib/UTraceRecord;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oplus/utrace/lib/UTraceRecord;->info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecord;->hasError:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
