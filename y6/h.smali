.class public final Ly6/h;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly6/i1$a;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc7/k;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ly6/i1;

.field public final synthetic c:Lc7/p;

.field public final synthetic d:Lc7/k;


# direct methods
.method public constructor <init>(Ljava/util/List;Ly6/i1;Lc7/p;Lc7/k;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lc7/k;",
            ">;",
            "Ly6/i1;",
            "Lc7/p;",
            "Lc7/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ly6/h;->a:Ljava/util/List;

    iput-object p2, p0, Ly6/h;->b:Ly6/i1;

    iput-object p3, p0, Ly6/h;->c:Lc7/p;

    iput-object p4, p0, Ly6/h;->d:Lc7/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    check-cast p1, Ly6/i1$a;

    const-string v0, "$this$runForkingPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc7/k;

    new-instance v2, Ly6/g;

    iget-object v3, p0, Ly6/h;->b:Ly6/i1;

    iget-object v4, p0, Ly6/h;->c:Lc7/p;

    iget-object v5, p0, Ly6/h;->d:Lc7/k;

    invoke-direct {v2, v3, v4, v1, v5}, Ly6/g;-><init>(Ly6/i1;Lc7/p;Lc7/k;Lc7/k;)V

    invoke-interface {p1, v2}, Ly6/i1$a;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_28
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
