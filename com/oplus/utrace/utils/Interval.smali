.class public final Lcom/oplus/utrace/utils/Interval;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/utils/Interval$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/utils/Interval$Companion;

.field public static final DEFAULT_WINDOW:J = 0xea60L

.field private static final MIN_CHECK_INTERVAL:J = 0x3e8L


# instance fields
.field private checkTime:J

.field private execTime:J

.field private final window:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/utils/Interval$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/utils/Interval$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/utils/Interval;->Companion:Lcom/oplus/utrace/utils/Interval$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oplus/utrace/utils/Interval;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/oplus/utrace/utils/Interval;->window:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const-wide/32 p1, 0xea60

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/utils/Interval;-><init>(J)V

    return-void
.end method

.method private final checkInternal()Z
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/utrace/utils/Interval;->checkTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_10

    return v3

    :cond_10
    iput-wide v0, p0, Lcom/oplus/utrace/utils/Interval;->checkTime:J

    iget-wide v4, p0, Lcom/oplus/utrace/utils/Interval;->window:J

    div-long v6, v0, v4

    iget-wide v8, p0, Lcom/oplus/utrace/utils/Interval;->execTime:J

    div-long/2addr v8, v4

    cmp-long v2, v6, v8

    if-nez v2, :cond_1e

    return v3

    :cond_1e
    iput-wide v0, p0, Lcom/oplus/utrace/utils/Interval;->execTime:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final check()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/utils/Interval;->checkInternal()Z

    move-result p0

    return p0
.end method

.method public final exec(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/utils/Interval;->checkInternal()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_e
    return-void
.end method
