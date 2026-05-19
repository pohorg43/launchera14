.class public interface abstract Lpantanal/app/SeedlingCard;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/Card;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/SeedlingCard$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getCardEngineType()Lcom/oplus/seedling/sdk/seedling/SeedlingCardEngineType;
.end method

.method public abstract getCodeContext()Ljava/lang/String;
.end method

.method public abstract getCurrentPageId()Ljava/lang/String;
.end method

.method public abstract getServiceId()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getUpkVersion()Ljava/lang/String;
.end method

.method public abstract getViewBySize(I)Landroid/view/View;
.end method

.method public abstract getViewListBySize(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewProperty(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getViewScreenShot()Landroid/graphics/Bitmap;
.end method

.method public abstract notifyCanStartAnimation(Landroid/view/View;Z)V
.end method

.method public abstract notifyLiteReload()V
.end method

.method public abstract notifySizeChange(II)V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract parseDataByEngine(Ljava/lang/String;Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;)V
.end method

.method public abstract performCardClickAction(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setAODStatus(Z)V
.end method

.method public abstract setDynamicConfiguration(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public abstract setMaxHeight(I)V
.end method

.method public abstract setMaxHeight(Landroid/view/View;I)V
.end method

.method public abstract setMaxWidth(I)V
.end method

.method public abstract setMaxWidth(Landroid/view/View;I)V
.end method

.method public abstract setScreenLocked(Z)V
.end method

.method public abstract setSecondaryScreenCapsuleDarkMode(ZZI)V
.end method

.method public abstract setViewStatusListener(Landroid/view/View;Lcom/oplus/seedling/sdk/seedling/IViewStatusListener;)V
.end method

.method public abstract setWidgetColor(IZ)V
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method
