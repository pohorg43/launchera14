.class public final Lt7/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final b:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final d:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final e:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static f:Lt7/g;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final g:Lt7/i;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final h:Lt7/i;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    invoke-static {v0}, Ly1/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "DefaultDispatcher"

    :cond_a
    sput-object v0, Lt7/l;->a:Ljava/lang/String;

    const-wide/32 v2, 0x186a0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    invoke-static/range {v1 .. v9}, Ly1/a;->g(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lt7/l;->b:J

    sget v0, Lr7/g0;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_25

    move v3, v1

    goto :goto_26

    :cond_25
    move v3, v0

    :goto_26
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    invoke-static/range {v2 .. v7}, Ly1/a;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lt7/l;->c:I

    const v2, 0x1ffffe

    const/4 v3, 0x0

    const v4, 0x1ffffe

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    invoke-static/range {v1 .. v6}, Ly1/a;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lt7/l;->d:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    invoke-static/range {v1 .. v9}, Ly1/a;->g(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lt7/l;->e:J

    sget-object v0, Lt7/e;->a:Lt7/e;

    sput-object v0, Lt7/l;->f:Lt7/g;

    new-instance v0, Lt7/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt7/j;-><init>(I)V

    sput-object v0, Lt7/l;->g:Lt7/i;

    new-instance v0, Lt7/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt7/j;-><init>(I)V

    sput-object v0, Lt7/l;->h:Lt7/i;

    return-void
.end method
