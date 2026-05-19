.class public Lm6/b;
.super Lm6/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/g<",
        "Ljava/util/List<",
        "+",
        "Lm6/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Li5/e0;",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lm6/g<",
            "*>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Li5/e0;",
            "+",
            "Ly6/l0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm6/g;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lm6/b;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 3

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm6/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    invoke-static {p0}, Lf5/g;->A(Ly6/l0;)Z

    move-result p1

    if-nez p1, :cond_46

    invoke-static {p0}, Lf5/g;->J(Ly6/l0;)Z

    move-result p1

    if-nez p1, :cond_46

    sget-object p1, Lf5/j$a;->W:Lh6/c;

    invoke-virtual {p1}, Lh6/c;->j()Lh6/d;

    move-result-object p1

    invoke-static {p0, p1}, Lf5/g;->D(Ly6/l0;Lh6/d;)Z

    move-result p1

    if-nez p1, :cond_46

    sget-object p1, Lf5/j$a;->X:Lh6/c;

    invoke-virtual {p1}, Lh6/c;->j()Lh6/d;

    move-result-object p1

    invoke-static {p0, p1}, Lf5/g;->D(Ly6/l0;Lh6/d;)Z

    move-result p1

    if-nez p1, :cond_46

    sget-object p1, Lf5/j$a;->Y:Lh6/c;

    invoke-virtual {p1}, Lh6/c;->j()Lh6/d;

    move-result-object p1

    invoke-static {p0, p1}, Lf5/g;->D(Ly6/l0;Lh6/d;)Z

    move-result p1

    if-nez p1, :cond_46

    sget-object p1, Lf5/j$a;->Z:Lh6/c;

    invoke-virtual {p1}, Lh6/c;->j()Lh6/d;

    move-result-object p1

    invoke-static {p0, p1}, Lf5/g;->D(Ly6/l0;Lh6/d;)Z

    :cond_46
    return-object p0
.end method
