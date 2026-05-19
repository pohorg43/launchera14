.class public final synthetic Lo7/b$d;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo7/b;->v()Lu7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Lo7/b<",
        "*>;",
        "Lu7/h<",
        "*>;",
        "Ljava/lang/Object;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo7/b$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo7/b$d;

    invoke-direct {v0}, Lo7/b$d;-><init>()V

    sput-object v0, Lo7/b$d;->a:Lo7/b$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lo7/b;

    const/4 v1, 0x3

    const-string v3, "registerSelectForReceive"

    const-string v4, "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    check-cast p1, Lo7/b;

    check-cast p2, Lu7/h;

    sget-object p0, Lo7/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lo7/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo7/k;

    :cond_11
    :goto_11
    invoke-virtual {p1}, Lo7/b;->x()Z

    move-result p3

    if-eqz p3, :cond_1d

    sget-object p0, Lo7/e;->l:Lr7/f0;

    invoke-interface {p2, p0}, Lu7/h;->c(Ljava/lang/Object;)V

    goto :goto_6e

    :cond_1d
    sget-object p3, Lo7/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    sget p3, Lo7/e;->b:I

    int-to-long v0, p3

    div-long v2, v6, v0

    rem-long v0, v6, v0

    long-to-int p3, v0

    iget-wide v0, p0, Lr7/c0;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_39

    invoke-virtual {p1, v2, v3, p0}, Lo7/b;->l(JLo7/k;)Lo7/k;

    move-result-object v0

    if-nez v0, :cond_38

    goto :goto_11

    :cond_38
    move-object p0, v0

    :cond_39
    move-object v0, p1

    move-object v1, p0

    move v2, p3

    move-wide v3, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lo7/b;->J(Lo7/k;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lo7/e;->m:Lr7/f0;

    if-ne v0, v1, :cond_54

    instance-of p1, p2, Lm7/v2;

    if-eqz p1, :cond_4d

    check-cast p2, Lm7/v2;

    goto :goto_4e

    :cond_4d
    const/4 p2, 0x0

    :goto_4e
    if-eqz p2, :cond_6e

    invoke-interface {p2, p0, p3}, Lm7/v2;->b(Lr7/c0;I)V

    goto :goto_6e

    :cond_54
    sget-object p3, Lo7/e;->o:Lr7/f0;

    if-ne v0, p3, :cond_64

    invoke-virtual {p1}, Lo7/b;->s()J

    move-result-wide v0

    cmp-long p3, v6, v0

    if-gez p3, :cond_11

    invoke-virtual {p0}, Lr7/e;->b()V

    goto :goto_11

    :cond_64
    sget-object p1, Lo7/e;->n:Lr7/f0;

    if-eq v0, p1, :cond_71

    invoke-virtual {p0}, Lr7/e;->b()V

    invoke-interface {p2, v0}, Lu7/h;->c(Ljava/lang/Object;)V

    :cond_6e
    :goto_6e
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_71
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
