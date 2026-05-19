.class public final Lw6/k$c$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw6/k$c;

.field public final synthetic b:Lw6/k;


# direct methods
.method public constructor <init>(Lw6/k$c;Lw6/k;)V
    .registers 3

    iput-object p1, p0, Lw6/k$c$b;->a:Lw6/k$c;

    iput-object p2, p0, Lw6/k$c$b;->b:Lw6/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lw6/k$c$b;->a:Lw6/k$c;

    iget-object v0, v0, Lw6/k$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lw6/k$c$b;->b:Lw6/k;

    invoke-virtual {p0}, Lw6/k;->o()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
