.class public final Ly6/k;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/j1;",
        "Ljava/lang/Iterable<",
        "+",
        "Ly6/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/j;


# direct methods
.method public constructor <init>(Ly6/j;)V
    .registers 2

    iput-object p1, p0, Ly6/k;->a:Ly6/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ly6/j1;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/k;->a:Ly6/j;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ly6/j;->i(Ly6/j;Ly6/j1;Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
