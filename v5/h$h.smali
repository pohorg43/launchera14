.class public final Lv5/h$h;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/h;->O(Li5/u0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/f;",
        "Ljava/util/Collection<",
        "+",
        "Li5/u0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/u0;

.field public final synthetic b:Lv5/h;


# direct methods
.method public constructor <init>(Li5/u0;Lv5/h;)V
    .registers 3

    iput-object p1, p0, Lv5/h$h;->a:Li5/u0;

    iput-object p2, p0, Lv5/h$h;->b:Lv5/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh6/f;

    const-string v0, "accessorName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv5/h$h;->a:Li5/u0;

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lv5/h$h;->a:Li5/u0;

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2a

    :cond_1a
    iget-object v0, p0, Lv5/h$h;->b:Lv5/h;

    invoke-static {v0, p1}, Lv5/h;->v(Lv5/h;Lh6/f;)Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Lv5/h$h;->b:Lv5/h;

    invoke-static {p0, p1}, Lv5/h;->w(Lv5/h;Lh6/f;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {v0, p0}, Li4/v;->U(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_2a
    return-object p0
.end method
