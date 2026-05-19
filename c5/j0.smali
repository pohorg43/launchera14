.class public final Lc5/j0;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/reflect/Type;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/k0;


# direct methods
.method public constructor <init>(Lc5/k0;)V
    .registers 2

    iput-object p1, p0, Lc5/j0;->a:Lc5/k0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lc5/j0;->a:Lc5/k0;

    invoke-virtual {p0}, Lc5/k0;->getJavaType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lo5/d;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
