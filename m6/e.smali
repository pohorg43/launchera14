.class public final Lm6/e;
.super Lm6/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/p<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(C)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Lm6/p;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 2

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lf5/h;->g:Lf5/h;

    invoke-virtual {p0, p1}, Lf5/g;->u(Lf5/h;)Ly6/s0;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string p1, "module.builtIns.charType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1a
    const/16 p0, 0x3e

    invoke-static {p0}, Lf5/g;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 v2, 0x8

    const/4 v4, 0x1

    if-ne p0, v2, :cond_22

    const-string p0, "\\b"

    goto :goto_65

    :cond_22
    const/16 v2, 0x9

    if-ne p0, v2, :cond_29

    const-string p0, "\\t"

    goto :goto_65

    :cond_29
    const/16 v2, 0xa

    if-ne p0, v2, :cond_30

    const-string p0, "\\n"

    goto :goto_65

    :cond_30
    const/16 v2, 0xc

    if-ne p0, v2, :cond_37

    const-string p0, "\\f"

    goto :goto_65

    :cond_37
    const/16 v2, 0xd

    if-ne p0, v2, :cond_3e

    const-string p0, "\\r"

    goto :goto_65

    :cond_3e
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    int-to-byte v5, v5

    if-eqz v5, :cond_5c

    if-eq v5, v2, :cond_5c

    const/16 v2, 0xe

    if-eq v5, v2, :cond_5c

    const/16 v2, 0xf

    if-eq v5, v2, :cond_5c

    const/16 v2, 0x10

    if-eq v5, v2, :cond_5c

    const/16 v2, 0x12

    if-eq v5, v2, :cond_5c

    const/16 v2, 0x13

    if-eq v5, v2, :cond_5c

    move v3, v4

    :cond_5c
    if-eqz v3, :cond_63

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_65

    :cond_63
    const-string p0, "?"

    :goto_65
    aput-object p0, v1, v4

    const-string p0, "\\u%04X (\'%s\')"

    const-string v2, "format(this, *args)"

    invoke-static {v1, v0, p0, v2}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
