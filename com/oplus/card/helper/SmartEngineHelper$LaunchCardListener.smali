.class public interface abstract Lcom/oplus/card/helper/SmartEngineHelper$LaunchCardListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/card/helper/SmartEngineHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LaunchCardListener"
.end annotation


# virtual methods
.method public abstract onSeedStartActivity(Landroid/view/View;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartActivityList(Ljava/util/List;[ILandroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;[I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onStartActivityListDirect(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartCardActivity(Landroid/content/Intent;[ILandroid/view/View;)V
.end method

.method public abstract onStartIntentDirect(Landroid/content/Intent;)V
.end method
