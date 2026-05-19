.class public final Lv5/l$j;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/l;-><init>(Lu5/g;Lv5/l;)V
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
        "Ljava/util/List<",
        "+",
        "Li5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/l;


# direct methods
.method public constructor <init>(Lv5/l;)V
    .registers 2

    iput-object p1, p0, Lv5/l$j;->a:Lv5/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lh6/f;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lv5/l$j;->a:Lv5/l;

    iget-object v1, v1, Lv5/l;->g:Lx6/h;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Li7/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    iget-object v1, p0, Lv5/l$j;->a:Lv5/l;

    invoke-virtual {v1, p1, v0}, Lv5/l;->n(Lh6/f;Ljava/util/Collection;)V

    iget-object p1, p0, Lv5/l$j;->a:Lv5/l;

    invoke-virtual {p1}, Lv5/l;->q()Li5/l;

    move-result-object p1

    invoke-static {p1}, Lk6/i;->m(Li5/l;)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-static {v0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_3d

    :cond_2d
    iget-object p0, p0, Lv5/l$j;->a:Lv5/l;

    iget-object p0, p0, Lv5/l;->b:Lu5/g;

    iget-object p1, p0, Lu5/g;->a:Lu5/c;

    iget-object p1, p1, Lu5/c;->r:Lz5/n;

    invoke-virtual {p1, p0, v0}, Lz5/n;->e(Lu5/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    :goto_3d
    return-object p0
.end method
