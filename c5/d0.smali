.class public Lc5/d0;
.super Lc5/g0;
.source ""

# interfaces
.implements Lz4/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/g0<",
        "TV;>;",
        "Lz4/o<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final m:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lc5/d0$a<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final n:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/t;Li5/o0;)V
    .registers 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lc5/g0;-><init>(Lc5/t;Li5/o0;)V

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/d0$b;

    invoke-direct {p2, p0}, Lc5/d0$b;-><init>(Lc5/d0;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lc5/d0;->m:Lh4/f;

    new-instance p2, Lc5/d0$c;

    invoke-direct {p2, p0}, Lc5/d0$c;-><init>(Lc5/d0;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/d0;->n:Lh4/f;

    return-void
.end method

.method public constructor <init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lc5/g0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/d0$b;

    invoke-direct {p2, p0}, Lc5/d0$b;-><init>(Lc5/d0;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lc5/d0;->m:Lh4/f;

    new-instance p2, Lc5/d0$c;

    invoke-direct {p2, p0}, Lc5/d0$c;-><init>(Lc5/d0;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/d0;->n:Lh4/f;

    return-void
.end method


# virtual methods
.method public getDelegate()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lc5/d0;->n:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lz4/n$b;
    .registers 1

    invoke-virtual {p0}, Lc5/d0;->q()Lc5/d0$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lz4/o$a;
    .registers 1

    invoke-virtual {p0}, Lc5/d0;->q()Lc5/d0$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/d0;->q()Lc5/d0$a;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic o()Lc5/g0$b;
    .registers 1

    invoke-virtual {p0}, Lc5/d0;->q()Lc5/d0$a;

    move-result-object p0

    return-object p0
.end method

.method public q()Lc5/d0$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc5/d0$a<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/d0;->m:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/d0$a;

    return-object p0
.end method
