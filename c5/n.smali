.class public final Lc5/n;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc5/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc5/i;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/i<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc5/n;->a:Lc5/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lc5/n;->a:Lc5/i;

    invoke-interface {v0}, Lz4/c;->isSuspend()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    invoke-virtual {v0}, Lc5/i;->e()Ld5/f;

    move-result-object v0

    invoke-interface {v0}, Ld5/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_1d

    :cond_1c
    move-object v0, v2

    :goto_1d
    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    const-class v3, Ll4/d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "continuationType.actualTypeArguments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Li4/k;->L([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_41

    check-cast v0, Ljava/lang/reflect/WildcardType;

    goto :goto_42

    :cond_41
    move-object v0, v2

    :goto_42
    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-static {v0}, Li4/k;->w([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Type;

    :cond_51
    if-nez v2, :cond_5d

    iget-object p0, p0, Lc5/n;->a:Lc5/i;

    invoke-virtual {p0}, Lc5/i;->e()Ld5/f;

    move-result-object p0

    invoke-interface {p0}, Ld5/f;->getReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    :cond_5d
    return-object v2
.end method
