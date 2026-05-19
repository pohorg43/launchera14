.class final Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/sdk/internal/Overflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowPt"
.end annotation


# instance fields
.field private flow:J

.field private idx:I

.field private isOverflow:Z

.field private window:J


# direct methods
.method public constructor <init>(JJZI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    iput-wide p3, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    iput-boolean p5, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    iput p6, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    return-void
.end method

.method public synthetic constructor <init>(JJZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v7, v1

    goto :goto_8

    :cond_7
    move v7, p5

    :goto_8
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_e

    move v8, v1

    goto :goto_f

    :cond_e
    move v8, p6

    :goto_f
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;-><init>(JJZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;JJZIILjava/lang/Object;)Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;
    .registers 16

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-wide p1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_d

    iget-wide p3, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    :cond_d
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_14

    iget-boolean p5, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    :cond_14
    move v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_1b

    iget p6, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    :cond_1b
    move v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->copy(JJZI)Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    return-wide v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    return-wide v0
.end method

.method public final component3()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    return p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    return p0
.end method

.method public final copy(JJZI)Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;
    .registers 14

    new-instance p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;-><init>(JJZI)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;

    iget-wide v3, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    iget-wide v5, p1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    iget-wide v5, p1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    iget-boolean v3, p1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    iget p1, p1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    if-eq p0, p1, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public final getFlow()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    return-wide v0
.end method

.method public final getIdx()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    return p0
.end method

.method public final getWindow()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isOverflow()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    return p0
.end method

.method public final setFlow(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    return-void
.end method

.method public final setIdx(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    return-void
.end method

.method public final setOverflow(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    return-void
.end method

.method public final setWindow(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "FlowPt(window="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->window:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->flow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isOverflow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->isOverflow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->idx:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
