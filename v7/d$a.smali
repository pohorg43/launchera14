.class public final Lv7/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/l;
.implements Lm7/v2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm7/l<",
        "Lh4/z;",
        ">;",
        "Lm7/v2;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lm7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/n<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final synthetic c:Lv7/d;


# direct methods
.method public constructor <init>(Lv7/d;Lm7/n;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/n<",
            "-",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lv7/d$a;->c:Lv7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv7/d$a;->a:Lm7/n;

    iput-object p3, p0, Lv7/d$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    iget p1, p0, Lm7/v0;->c:I

    invoke-virtual {p0, p1}, Lm7/n;->q(I)V

    return-void
.end method

.method public b(Lr7/c0;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/c0<",
            "*>;I)V"
        }
    .end annotation

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    invoke-virtual {p0, p1, p2}, Lm7/n;->b(Lr7/c0;I)V

    return-void
.end method

.method public getContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    iget-object p0, p0, Lm7/n;->e:Ll4/f;

    return-object p0
.end method

.method public h(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    invoke-virtual {p0, p1}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public i(Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 5

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lm7/x;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lm7/x;-><init>(Ljava/lang/Throwable;ZI)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lm7/n;->I(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lr7/f0;

    move-result-object p0

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    invoke-virtual {p0}, Lm7/n;->isActive()Z

    move-result p0

    return p0
.end method

.method public l(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    check-cast p1, Lh4/z;

    iget-object p2, p0, Lv7/d$a;->c:Lv7/d;

    sget-object v0, Lv7/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lv7/d$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lv7/d$a;->a:Lm7/n;

    new-instance v0, Lv7/b;

    iget-object v1, p0, Lv7/d$a;->c:Lv7/d;

    invoke-direct {v0, v1, p0}, Lv7/b;-><init>(Lv7/d;Lv7/d$a;)V

    iget p0, p2, Lm7/v0;->c:I

    invoke-virtual {p2, p1, p0, v0}, Lm7/n;->G(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public m(Ljava/lang/Throwable;)Z
    .registers 2

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    invoke-virtual {p0, p1}, Lm7/n;->m(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    invoke-virtual {p0, p1}, Lm7/n;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Lm7/f0;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lh4/z;

    iget-object p0, p0, Lv7/d$a;->a:Lm7/n;

    invoke-virtual {p0, p1, p2}, Lm7/n;->s(Lm7/f0;Ljava/lang/Object;)V

    return-void
.end method

.method public x(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lh4/z;

    iget-object p2, p0, Lv7/d$a;->c:Lv7/d;

    iget-object p3, p0, Lv7/d$a;->a:Lm7/n;

    new-instance v0, Lv7/c;

    invoke-direct {v0, p2, p0}, Lv7/c;-><init>(Lv7/d;Lv7/d$a;)V

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lm7/n;->I(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lr7/f0;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p2, p0, Lv7/d$a;->c:Lv7/d;

    sget-object p3, Lv7/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p0, p0, Lv7/d$a;->b:Ljava/lang/Object;

    invoke-virtual {p3, p2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    return-object p1
.end method
