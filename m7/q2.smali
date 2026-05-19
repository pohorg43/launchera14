.class public final Lm7/q2;
.super Lr7/b0;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T::TU;>",
        "Lr7/b0<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLl4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ll4/d<",
            "-TU;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Ll4/d;->getContext()Ll4/f;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lr7/b0;-><init>(Ll4/f;Ll4/d;)V

    iput-wide p1, p0, Lm7/q2;->e:J

    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lm7/a;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm7/q2;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public run()V
    .registers 13

    iget-wide v0, p0, Lm7/q2;->e:J

    iget-object v2, p0, Lm7/a;->c:Ll4/f;

    invoke-static {v2}, Lm7/s0;->b(Ll4/f;)Lm7/r0;

    move-result-object v2

    instance-of v3, v2, Lm7/t0;

    if-eqz v3, :cond_f

    check-cast v2, Lm7/t0;

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_84

    sget-object v3, Ll7/a;->a:Ll7/a$a;

    sget-object v3, Ll7/c;->d:Ll7/c;

    const-string v4, "unit"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ll7/c;->b:Ll7/c;

    const-string v5, "sourceUnit"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "targetUnit"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v3, Ll7/c;->a:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v4, Ll7/c;->a:Ljava/util/concurrent/TimeUnit;

    const-wide v9, 0x3ffffffffffa14bfL  # 1.9999999999138678

    invoke-virtual {v7, v9, v10, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    new-instance v9, Ly4/g;

    neg-long v10, v7

    invoke-direct {v9, v10, v11, v7, v8}, Ly4/g;-><init>(JJ)V

    invoke-virtual {v9, v0, v1}, Ly4/g;->a(J)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_55

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Ll7/c;->a:Ljava/util/concurrent/TimeUnit;

    iget-object v3, v3, Ll7/c;->a:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    shl-long/2addr v3, v8

    sget-object v5, Ll7/a;->a:Ll7/a$a;

    sget v5, Ll7/b;->a:I

    goto :goto_7e

    :cond_55
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Ll7/c;->a:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    const-wide v5, -0x3fffffffffffffffL  # -2.0000000000000004

    const-wide v9, 0x3fffffffffffffffL  # 1.9999999999999998

    cmp-long v7, v3, v5

    if-gez v7, :cond_71

    move-wide v3, v5

    goto :goto_76

    :cond_71
    cmp-long v5, v3, v9

    if-lez v5, :cond_76

    move-wide v3, v9

    :cond_76
    :goto_76
    shl-long/2addr v3, v8

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sget-object v5, Ll7/a;->a:Ll7/a$a;

    sget v5, Ll7/b;->a:I

    :goto_7e
    invoke-interface {v2, v3, v4}, Lm7/t0;->i(J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9a

    :cond_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timed out waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9a
    new-instance v0, Lm7/p2;

    invoke-direct {v0, v2, p0}, Lm7/p2;-><init>(Ljava/lang/String;Lm7/s1;)V

    invoke-virtual {p0, v0}, Lm7/x1;->F(Ljava/lang/Object;)Z

    return-void
.end method
