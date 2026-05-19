.class public final Lc5/r0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc5/r0;

.field public static final b:Lj6/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lj6/c;->a:Lj6/c;

    sput-object v0, Lc5/r0;->b:Lj6/c;

    return-void
.end method

.method public static final a(Ljava/lang/StringBuilder;Li5/r0;)V
    .registers 3

    if-eqz p1, :cond_17

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc5/r0;->e(Ly6/l0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    return-void
.end method

.method public static final b(Ljava/lang/StringBuilder;Li5/a;)V
    .registers 4

    invoke-static {p1}, Lc5/w0;->g(Li5/a;)Li5/r0;

    move-result-object v0

    invoke-interface {p1}, Li5/a;->L()Li5/r0;

    move-result-object p1

    invoke-static {p0, v0}, Lc5/r0;->a(Ljava/lang/StringBuilder;Li5/r0;)V

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_19

    const-string v1, "("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-static {p0, p1}, Lc5/r0;->a(Ljava/lang/StringBuilder;Li5/r0;)V

    if-eqz v0, :cond_23

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    return-void
.end method

.method public static final c(Li5/x;)Ljava/lang/String;
    .registers 11

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Lc5/r0;->b(Ljava/lang/StringBuilder;Li5/a;)V

    sget-object v1, Lc5/r0;->b:Lj6/c;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    const-string v3, "descriptor.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lj6/c;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Li5/a;->g()Ljava/util/List;

    move-result-object v1

    const-string v2, "descriptor.valueParameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lc5/r0$a;->a:Lc5/r0$a;

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x30

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Li4/v;->L(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lc5/r0;->e(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Li5/o0;)Ljava/lang/String;
    .registers 5

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Li5/f1;->K()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "var "

    goto :goto_15

    :cond_13
    const-string v1, "val "

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Lc5/r0;->b(Ljava/lang/StringBuilder;Li5/a;)V

    sget-object v1, Lc5/r0;->b:Lj6/c;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    const-string v3, "descriptor.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lj6/c;->u(Lh6/f;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    const-string v1, "descriptor.type"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/r0;->e(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Ly6/l0;)Ljava/lang/String;
    .registers 2

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc5/r0;->b:Lj6/c;

    invoke-virtual {v0, p0}, Lj6/c;->v(Ly6/l0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
