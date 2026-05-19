.class public final Lp7/r;
.super Lq7/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq7/c<",
        "Lp7/p<",
        "*>;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,731:1\n1#2:732\n*E\n"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lq7/c;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lp7/r;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 6

    check-cast p1, Lp7/p;

    iget-wide v0, p0, Lp7/r;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 p0, 0x0

    goto :goto_19

    :cond_c
    iget-wide v0, p1, Lp7/p;->h:J

    iget-wide v2, p1, Lp7/p;->i:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    iput-wide v0, p1, Lp7/p;->i:J

    :cond_16
    iput-wide v0, p0, Lp7/r;->a:J

    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method public b(Ljava/lang/Object;)[Ll4/d;
    .registers 6

    check-cast p1, Lp7/p;

    iget-wide v0, p0, Lp7/r;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lp7/r;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Lp7/r;->b:Ll4/d;

    invoke-virtual {p1, v0, v1}, Lp7/p;->t(J)[Ll4/d;

    move-result-object p0

    return-object p0
.end method
