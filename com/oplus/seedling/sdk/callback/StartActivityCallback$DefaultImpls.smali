.class public final Lcom/oplus/seedling/sdk/callback/StartActivityCallback$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/callback/StartActivityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onStartActivityV2(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;Landroid/view/View;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/callback/StartActivityCallback;",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const-string p0, "seedling"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intentList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
