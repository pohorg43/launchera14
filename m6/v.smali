.class public final Lm6/v;
.super Lm6/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm6/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lm6/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Li5/e0;)Ly6/l0;
    .registers 2

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    invoke-virtual {p0}, Lf5/g;->w()Ly6/s0;

    move-result-object p0

    const-string p1, "module.builtIns.stringType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x22

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lm6/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
