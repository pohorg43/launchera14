.class public final Lm7/g2;
.super Lm7/w1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/w1;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/ResumeAwaitOnCompletion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1451:1\n1#2:1452\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lm7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm7/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/n<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lm7/w1;-><init>()V

    iput-object p1, p0, Lm7/g2;->e:Lm7/n;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Lm7/w1;->j()Lm7/x1;

    move-result-object p1

    invoke-virtual {p1}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lm7/x;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lm7/g2;->e:Lm7/n;

    check-cast p1, Lm7/x;

    iget-object p1, p1, Lm7/x;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_23

    :cond_1a
    iget-object p0, p0, Lm7/g2;->e:Lm7/n;

    invoke-static {p1}, Lm7/y1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :goto_23
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm7/g2;->i(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
