.class public final Lc5/y;
.super Lc5/d0;
.source ""

# interfaces
.implements Lz4/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/d0<",
        "TV;>;",
        "Lz4/j<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final o:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lc5/y$a<",
            "TV;>;>;"
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

    invoke-direct {p0, p1, p2}, Lc5/d0;-><init>(Lc5/t;Li5/o0;)V

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/y$b;

    invoke-direct {p2, p0}, Lc5/y$b;-><init>(Lc5/y;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/y;->o:Lh4/f;

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

    invoke-direct {p0, p1, p2, p3, p4}, Lc5/d0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/y$b;

    invoke-direct {p2, p0}, Lc5/y$b;-><init>(Lc5/y;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/y;->o:Lh4/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSetter()Lz4/i$a;
    .registers 1

    invoke-virtual {p0}, Lc5/y;->r()Lc5/y$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()Lz4/j$a;
    .registers 1

    invoke-virtual {p0}, Lc5/y;->r()Lc5/y$a;

    move-result-object p0

    return-object p0
.end method

.method public r()Lc5/y$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc5/y$a<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lc5/y;->o:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc5/y$a;

    return-object p0
.end method
