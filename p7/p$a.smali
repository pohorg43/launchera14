.class public final Lp7/p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/a1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lp7/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/p<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final d:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp7/p;JLjava/lang/Object;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/p<",
            "*>;J",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp7/p$a;->a:Lp7/p;

    iput-wide p2, p0, Lp7/p$a;->b:J

    iput-object p4, p0, Lp7/p$a;->c:Ljava/lang/Object;

    iput-object p5, p0, Lp7/p$a;->d:Ll4/d;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 6

    iget-object v0, p0, Lp7/p$a;->a:Lp7/p;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lp7/p$a;->b:J

    invoke-virtual {v0}, Lp7/p;->m()J

    move-result-wide v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2e

    cmp-long v1, v1, v3

    if-gez v1, :cond_f

    monitor-exit v0

    goto :goto_2d

    :cond_f
    :try_start_f
    iget-object v1, v0, Lp7/p;->g:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v2, p0, Lp7/p$a;->b:J

    invoke-static {v1, v2, v3}, Lp7/q;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_2e

    if-eq v2, p0, :cond_1e

    monitor-exit v0

    goto :goto_2d

    :cond_1e
    :try_start_1e
    iget-wide v2, p0, Lp7/p$a;->b:J

    sget-object p0, Lp7/q;->a:Lr7/f0;

    long-to-int v2, v2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput-object p0, v1, v2

    invoke-virtual {v0}, Lp7/p;->g()V
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2e

    monitor-exit v0

    :goto_2d
    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method
