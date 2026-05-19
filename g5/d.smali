.class public final Lg5/d;
.super Lr6/e;
.source ""


# direct methods
.method public constructor <init>(Lx6/m;Lg5/b;)V
    .registers 4

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lr6/e;-><init>(Lx6/m;Li5/e;)V

    return-void
.end method


# virtual methods
.method public h()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr6/e;->b:Li5/e;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.builtins.functions.FunctionClassDescriptor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lg5/b;

    iget-object v0, v0, Lg5/b;->g:Lg5/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    sget-object p0, Li4/y;->a:Li4/y;

    goto :goto_31

    :cond_17
    iget-object p0, p0, Lr6/e;->b:Li5/e;

    check-cast p0, Lg5/b;

    invoke-static {p0, v1}, Lg5/e;->R0(Lg5/b;Z)Lg5/e;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_31

    :cond_24
    iget-object p0, p0, Lr6/e;->b:Li5/e;

    check-cast p0, Lg5/b;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lg5/e;->R0(Lg5/b;Z)Lg5/e;

    move-result-object p0

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_31
    return-object p0
.end method
