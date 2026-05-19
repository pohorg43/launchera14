.class public abstract Lz6/f;
.super Ly6/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ly6/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lc7/i;)Lc7/i;
    .registers 2

    invoke-virtual {p0, p1}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Lh6/b;)Li5/e;
.end method

.method public abstract c(Li5/e;Lkotlin/jvm/functions/Function0;)Lr6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lr6/i;",
            ">(",
            "Li5/e;",
            "Lkotlin/jvm/functions/Function0<",
            "+TS;>;)TS;"
        }
    .end annotation
.end method

.method public abstract d(Li5/e0;)Z
.end method

.method public abstract e(Ly6/j1;)Z
.end method

.method public abstract f(Li5/l;)Li5/h;
.end method

.method public abstract g(Li5/e;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            ")",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Lc7/i;)Ly6/l0;
.end method
