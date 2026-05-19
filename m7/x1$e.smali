.class public final Lm7/x1$e;
.super Ln4/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/x1;->c()Lj7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lj7/j<",
        "-",
        "Lm7/s1;",
        ">;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1451:1\n341#2,6:1452\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n957#1:1452,6\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    l = {
        0x3bb,
        0x3bd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lm7/x1;


# direct methods
.method public constructor <init>(Lm7/x1;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/x1;",
            "Ll4/d<",
            "-",
            "Lm7/x1$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lm7/x1$e;->e:Lm7/x1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/i;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance v0, Lm7/x1$e;

    iget-object p0, p0, Lm7/x1$e;->e:Lm7/x1;

    invoke-direct {v0, p0, p2}, Lm7/x1$e;-><init>(Lm7/x1;Ll4/d;)V

    iput-object p1, v0, Lm7/x1$e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lj7/j;

    check-cast p2, Ll4/d;

    new-instance v0, Lm7/x1$e;

    iget-object p0, p0, Lm7/x1$e;->e:Lm7/x1;

    invoke-direct {v0, p0, p2}, Lm7/x1$e;-><init>(Lm7/x1;Ll4/d;)V

    iput-object p1, v0, Lm7/x1$e;->d:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lm7/x1$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lm7/x1$e;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_24

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lm7/x1$e;->b:Ljava/lang/Object;

    check-cast v1, Lr7/q;

    iget-object v3, p0, Lm7/x1$e;->a:Ljava/lang/Object;

    check-cast v3, Lr7/o;

    iget-object v4, p0, Lm7/x1$e;->d:Ljava/lang/Object;

    check-cast v4, Lj7/j;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_7f

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_84

    :cond_28
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lm7/x1$e;->d:Ljava/lang/Object;

    check-cast p1, Lj7/j;

    iget-object v1, p0, Lm7/x1$e;->e:Lm7/x1;

    invoke-virtual {v1}, Lm7/x1;->S()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lm7/t;

    if-eqz v4, :cond_46

    check-cast v1, Lm7/t;

    iget-object v1, v1, Lm7/t;->e:Lm7/u;

    iput v3, p0, Lm7/x1$e;->c:I

    invoke-virtual {p1, v1, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_84

    return-object v0

    :cond_46
    instance-of v3, v1, Lm7/n1;

    if-eqz v3, :cond_84

    check-cast v1, Lm7/n1;

    invoke-interface {v1}, Lm7/n1;->b()Lm7/c2;

    move-result-object v1

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Lr7/q;->e()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lr7/q;

    move-object v4, p1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    instance-of p1, v1, Lm7/t;

    if-eqz p1, :cond_7f

    move-object p1, v1

    check-cast p1, Lm7/t;

    iget-object p1, p1, Lm7/t;->e:Lm7/u;

    iput-object v4, p0, Lm7/x1$e;->d:Ljava/lang/Object;

    iput-object v3, p0, Lm7/x1$e;->a:Ljava/lang/Object;

    iput-object v1, p0, Lm7/x1$e;->b:Ljava/lang/Object;

    iput v2, p0, Lm7/x1$e;->c:I

    invoke-virtual {v4, p1, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7f

    return-object v0

    :cond_7f
    :goto_7f
    invoke-virtual {v1}, Lr7/q;->f()Lr7/q;

    move-result-object v1

    goto :goto_61

    :cond_84
    :goto_84
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
