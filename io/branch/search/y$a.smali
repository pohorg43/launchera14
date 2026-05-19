.class public final Lio/branch/search/y$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/y;-><init>(Lio/branch/search/x;Lio/branch/search/z3;Lio/branch/search/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/branch/search/z3;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/y;

.field public final synthetic b:Lio/branch/search/z;


# direct methods
.method public constructor <init>(Lio/branch/search/y;Lio/branch/search/z;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/y$a;->a:Lio/branch/search/y;

    iput-object p2, p0, Lio/branch/search/y$a;->b:Lio/branch/search/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/branch/search/z3;)V
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lio/branch/search/z3;->a:I

    iget-object v1, p0, Lio/branch/search/y$a;->a:Lio/branch/search/y;

    invoke-static {v1}, Lio/branch/search/y;->a(Lio/branch/search/y;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/z3;

    iget v1, v1, Lio/branch/search/z3;->a:I

    if-ne v0, v1, :cond_18

    return-void

    :cond_18
    iget-object v0, p0, Lio/branch/search/y$a;->b:Lio/branch/search/z;

    invoke-interface {v0, p1}, Lio/branch/search/z;->b(Lio/branch/search/z3;)V

    iget-object v0, p0, Lio/branch/search/y$a;->b:Lio/branch/search/z;

    invoke-interface {v0, p1}, Lio/branch/search/z;->a(Lio/branch/search/z3;)V

    iget-object p0, p0, Lio/branch/search/y$a;->a:Lio/branch/search/y;

    invoke-static {p0}, Lio/branch/search/y;->a(Lio/branch/search/y;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lio/branch/search/z3;

    invoke-virtual {p0, p1}, Lio/branch/search/y$a;->a(Lio/branch/search/z3;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
