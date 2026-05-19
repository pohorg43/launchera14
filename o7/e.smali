.class public final Lo7/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:I

.field public static final d:Lr7/f0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final e:Lr7/f0;

.field public static final f:Lr7/f0;

.field public static final g:Lr7/f0;

.field public static final h:Lr7/f0;

.field public static final i:Lr7/f0;

.field public static final j:Lr7/f0;

.field public static final k:Lr7/f0;

.field public static final l:Lr7/f0;

.field public static final m:Lr7/f0;

.field public static final n:Lr7/f0;

.field public static final o:Lr7/f0;

.field public static final p:Lr7/f0;

.field public static final q:Lr7/f0;

.field public static final r:Lr7/f0;

.field public static final s:Lr7/f0;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v6, Lo7/k;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo7/k;-><init>(JLo7/k;Lo7/b;I)V

    sput-object v6, Lo7/e;->a:Lo7/k;

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ly1/a;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lo7/e;->b:I

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ly1/a;->f(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lo7/e;->c:I

    new-instance v0, Lr7/f0;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->d:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->e:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->f:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->g:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->h:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->i:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->j:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->k:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->l:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->m:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->n:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->o:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->p:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->q:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->r:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo7/e;->s:Lr7/f0;

    return-void
.end method

.method public static final a(JZ)J
    .registers 5

    if-eqz p2, :cond_5

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final b(JI)J
    .registers 5

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final c(Lm7/l;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lm7/l;->x(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p0, p1}, Lm7/l;->C(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static d(Lm7/l;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)Z
    .registers 4

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p2}, Lm7/l;->x(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p0, p1}, Lm7/l;->C(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
