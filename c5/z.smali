.class public final Lc5/z;
.super Lc5/e0;
.source ""

# interfaces
.implements Lz4/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/e0<",
        "TT;TV;>;",
        "Lz4/k<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final o:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lc5/z$a<",
            "TT;TV;>;>;"
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

    invoke-direct {p0, p1, p2}, Lc5/e0;-><init>(Lc5/t;Li5/o0;)V

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/z$b;

    invoke-direct {p2, p0}, Lc5/z$b;-><init>(Lc5/z;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/z;->o:Lh4/f;

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

    invoke-direct {p0, p1, p2, p3, p4}, Lc5/e0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/z$b;

    invoke-direct {p2, p0}, Lc5/z$b;-><init>(Lc5/z;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/z;->o:Lh4/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSetter()Lz4/i$a;
    .registers 1

    invoke-virtual {p0}, Lc5/z;->r()Lc5/z$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()Lz4/k$a;
    .registers 1

    invoke-virtual {p0}, Lc5/z;->r()Lc5/z$a;

    move-result-object p0

    return-object p0
.end method

.method public r()Lc5/z$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc5/z$a<",
            "TT;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/z;->o:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/z$a;

    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/z;->r()Lc5/z$a;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lc5/i;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
