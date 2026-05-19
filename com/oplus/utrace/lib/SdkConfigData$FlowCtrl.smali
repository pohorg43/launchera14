.class public final Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/SdkConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowCtrl"
.end annotation


# instance fields
.field private final maxFlow:J

.field private final window:J


# direct methods
.method public constructor <init>()V
    .registers 8

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    iput-wide p3, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_7

    const-wide/32 p1, 0x5265c00

    :cond_7
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_10

    const-wide p3, 0x7fffffffffffffffL

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;-><init>(JJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;JJILjava/lang/Object;)Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-wide p1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    iget-wide p3, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->copy(JJ)Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    return-wide v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    return-wide v0
.end method

.method public final copy(JJ)Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;
    .registers 5

    new-instance p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;-><init>(JJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    iget-wide v3, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    iget-wide v5, p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    iget-wide p0, p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getMaxFlow()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    return-wide v0
.end method

.method public final getWindow()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "FlowCtrl(window="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->window:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->maxFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
