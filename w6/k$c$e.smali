.class public final Lw6/k$c$e;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/k$c;-><init>(Lw6/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
        "Li5/z0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/k$c;


# direct methods
.method public constructor <init>(Lw6/k$c;)V
    .registers 2

    iput-object p1, p0, Lw6/k$c$e;->a:Lw6/k$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lh6/f;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lw6/k$c$e;->a:Lw6/k$c;

    iget-object v0, p0, Lw6/k$c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x0

    if-nez p1, :cond_15

    goto :goto_39

    :cond_15
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p1, p1, Lw6/k;->b:Lu6/m;

    iget-object p1, p1, Lu6/m;->a:Lu6/k;

    iget-object p1, p1, Lu6/k;->p:Li6/f;

    sget-object v2, Lc6/r;->p:Li6/r;

    check-cast v2, Li6/b;

    invoke-virtual {v2, v1, p1}, Li6/b;->c(Ljava/io/InputStream;Li6/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc6/r;

    if-nez p1, :cond_2f

    goto :goto_39

    :cond_2f
    iget-object p0, p0, Lw6/k$c;->i:Lw6/k;

    iget-object p0, p0, Lw6/k;->b:Lu6/m;

    iget-object p0, p0, Lu6/m;->i:Lu6/v;

    invoke-virtual {p0, p1}, Lu6/v;->h(Lc6/r;)Li5/z0;

    move-result-object v0

    :goto_39
    return-object v0
.end method
