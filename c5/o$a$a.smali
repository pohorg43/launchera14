.class public final Lc5/o$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc5/o$a;-><init>(Lc5/o;)V
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
        "Lc5/i<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/o<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/o$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/o<",
            "TT;>.a;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/o$a$a;->a:Lc5/o$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lc5/o$a$a;->a:Lc5/o$a;

    iget-object v0, v0, Lc5/o$a;->n:Lc5/p0$a;

    sget-object v1, Lc5/o$a;->q:[Lz4/n;

    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "<get-allNonStaticMembers>(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Lc5/o$a$a;->a:Lc5/o$a;

    iget-object p0, p0, Lc5/o$a;->o:Lc5/p0$a;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "<get-allStaticMembers>(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
