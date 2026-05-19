.class public final Lc5/l;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Li5/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li5/b;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Li5/b;I)V
    .registers 3

    iput-object p1, p0, Lc5/l;->a:Li5/b;

    iput p2, p0, Lc5/l;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lc5/l;->a:Li5/b;

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lc5/l;->b:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "descriptor.valueParameters[i]"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/m0;

    return-object p0
.end method
