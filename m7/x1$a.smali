.class public final Lm7/x1$a;
.super Lm7/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/n<",
        "TT;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1451:1\n1#2:1452\n*E\n"
    }
.end annotation


# instance fields
.field public final i:Lm7/x1;


# direct methods
.method public constructor <init>(Ll4/d;Lm7/x1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-TT;>;",
            "Lm7/x1;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lm7/n;-><init>(Ll4/d;I)V

    iput-object p2, p0, Lm7/x1$a;->i:Lm7/x1;

    return-void
.end method


# virtual methods
.method public E()Ljava/lang/String;
    .registers 1

    const-string p0, "AwaitContinuation"

    return-object p0
.end method

.method public r(Lm7/s1;)Ljava/lang/Throwable;
    .registers 3

    iget-object p0, p0, Lm7/x1$a;->i:Lm7/x1;

    invoke-virtual {p0}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lm7/x1$c;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Lm7/x1$c;

    invoke-virtual {v0}, Lm7/x1$c;->e()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    instance-of v0, p0, Lm7/x;

    if-eqz v0, :cond_1d

    check-cast p0, Lm7/x;

    iget-object p0, p0, Lm7/x;->a:Ljava/lang/Throwable;

    return-object p0

    :cond_1d
    check-cast p1, Lm7/x1;

    invoke-virtual {p1}, Lm7/x1;->g()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method
