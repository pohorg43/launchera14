.class public final Ly6/j$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/j$a;-><init>(Ly6/j;Lz6/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ly6/l0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/j$a;

.field public final synthetic b:Ly6/j;


# direct methods
.method public constructor <init>(Ly6/j$a;Ly6/j;)V
    .registers 3

    iput-object p1, p0, Ly6/j$a$a;->a:Ly6/j$a;

    iput-object p2, p0, Ly6/j$a$a;->b:Ly6/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ly6/j$a$a;->a:Ly6/j$a;

    iget-object v0, v0, Ly6/j$a;->a:Lz6/f;

    iget-object p0, p0, Ly6/j$a$a;->b:Ly6/j;

    invoke-virtual {p0}, Ly6/j;->o()Ljava/util/List;

    move-result-object p0

    sget-object v1, Lz6/g;->a:Lh/b;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "types"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/l0;

    invoke-virtual {v0, v2}, Lz6/f;->h(Lc7/i;)Ly6/l0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_39
    return-object v1
.end method
