.class public final Lu6/x;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lm6/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/v;

.field public final synthetic b:Lc6/n;

.field public final synthetic c:Lw6/m;


# direct methods
.method public constructor <init>(Lu6/v;Lc6/n;Lw6/m;)V
    .registers 4

    iput-object p1, p0, Lu6/x;->a:Lu6/v;

    iput-object p2, p0, Lu6/x;->b:Lc6/n;

    iput-object p3, p0, Lu6/x;->c:Lw6/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lu6/x;->a:Lu6/v;

    iget-object v1, v0, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->c:Li5/l;

    invoke-virtual {v0, v1}, Lu6/v;->a(Li5/l;)Lu6/b0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lu6/x;->a:Lu6/v;

    iget-object v1, v1, Lu6/v;->a:Lu6/m;

    iget-object v1, v1, Lu6/m;->a:Lu6/k;

    iget-object v1, v1, Lu6/k;->e:Lu6/c;

    iget-object v2, p0, Lu6/x;->b:Lc6/n;

    iget-object p0, p0, Lu6/x;->c:Lw6/m;

    invoke-virtual {p0}, Ll5/f0;->getReturnType()Ly6/l0;

    move-result-object p0

    const-string v3, "property.returnType"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, p0}, Lu6/c;->d(Lu6/b0;Lc6/n;Ly6/l0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm6/g;

    return-object p0
.end method
