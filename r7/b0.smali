.class public Lr7/b0;
.super Lm7/a;
.source ""

# interfaces
.implements Ln4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/a<",
        "TT;>;",
        "Ln4/d;"
    }
.end annotation


# instance fields
.field public final d:Ll4/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll4/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll4/f;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f;",
            "Ll4/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lm7/a;-><init>(Ll4/f;ZZ)V

    iput-object p2, p0, Lr7/b0;->d:Ll4/d;

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lr7/b0;->d:Ll4/d;

    invoke-static {v0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v0

    iget-object p0, p0, Lr7/b0;->d:Ll4/d;

    invoke-static {p1, p0}, Lm7/b0;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1}, Lr7/k;->b(Ll4/d;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method public final W()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Ln4/d;
    .registers 2

    iget-object p0, p0, Lr7/b0;->d:Ll4/d;

    instance-of v0, p0, Ln4/d;

    if-eqz v0, :cond_9

    check-cast p0, Ln4/d;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public k0(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lr7/b0;->d:Ll4/d;

    invoke-static {p1, p0}, Lm7/b0;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
