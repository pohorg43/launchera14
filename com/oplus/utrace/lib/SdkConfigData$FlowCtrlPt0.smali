.class final Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/SdkConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowCtrlPt0"
.end annotation


# instance fields
.field private final maxFlow:J

.field private final patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final window:J


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;-><init>(Ljava/util/List;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;JJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    const-string v0, "patterns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    iput-wide p2, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    iput-wide p4, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 10

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    sget-object p1, Li4/y;->a:Li4/y;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_d

    const-wide/32 p2, 0x5265c00

    :cond_d
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_17

    const-wide p4, 0x7fffffffffffffffL

    :cond_17
    move-wide p6, p4

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    invoke-direct/range {p2 .. p7}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;-><init>(Ljava/util/List;JJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;Ljava/util/List;JJILjava/lang/Object;)Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;
    .registers 10

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-wide p2, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    :cond_c
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-wide p4, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    :cond_13
    move-wide p6, p4

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    invoke-virtual/range {p2 .. p7}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->copy(Ljava/util/List;JJ)Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    return-object p0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    return-wide v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    return-wide v0
.end method

.method public final copy(Ljava/util/List;JJ)Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;"
        }
    .end annotation

    const-string p0, "patterns"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;-><init>(Ljava/util/List;JJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;

    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    iget-wide v5, p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    iget-wide p0, p1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getMaxFlow()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    return-wide v0
.end method

.method public final getPatterns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    return-object p0
.end method

.method public final getWindow()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "FlowCtrlPt0(patterns="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->patterns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->window:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->maxFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
