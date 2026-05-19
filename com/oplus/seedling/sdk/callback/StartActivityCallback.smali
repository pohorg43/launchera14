.class public interface abstract Lcom/oplus/seedling/sdk/callback/StartActivityCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/callback/StartActivityCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onStartActivity(Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onStartActivityV2(Lcom/oplus/seedling/sdk/seedling/ISeedling;Ljava/util/List;Landroid/view/View;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/seedling/ISeedling;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation
.end method
