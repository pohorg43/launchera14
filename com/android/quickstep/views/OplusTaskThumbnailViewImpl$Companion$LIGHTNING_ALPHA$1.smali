.class public final Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion$LIGHTNING_ALPHA$1;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/TaskThumbnailView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "alpha"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/TaskThumbnailView;)Ljava/lang/Float;
    .registers 2

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz p0, :cond_d

    check-cast p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getLightningAlpha()F

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion$LIGHTNING_ALPHA$1;->get(Lcom/android/quickstep/views/TaskThumbnailView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/quickstep/views/TaskThumbnailView;F)V
    .registers 3

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz p0, :cond_d

    check-cast p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_13

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setLightningAlpha(F)V

    :cond_13
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$Companion$LIGHTNING_ALPHA$1;->setValue(Lcom/android/quickstep/views/TaskThumbnailView;F)V

    return-void
.end method
