.class public final Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/uioverrides/states/OplusBlurLayer$Companion;
    }
.end annotation


# static fields
.field private static final CALLSITE:Ljava/lang/String; = "OplusLauncher.Blur"

.field public static final Companion:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer$Companion;

.field private static final NAME:Ljava/lang/String; = "OplusLauncherBlurLayer"

.field private static final TAG:Ljava/lang/String; = "OplusBlurLayer"


# instance fields
.field private blurLayer:Landroid/view/SurfaceControl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->Companion:Lcom/android/launcher3/uioverrides/states/OplusBlurLayer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hide(Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;I)V
    .registers 8

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide(), parentLayer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_24

    :cond_23
    move-object v2, v1

    :goto_24
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", blurLayer: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_42

    :cond_41
    move-object v0, v1

    :goto_42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", blurRadius="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusBlurLayer"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_67

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-ne v3, v0, :cond_67

    move v3, v0

    goto :goto_68

    :cond_67
    move v3, v2

    :goto_68
    if-eqz v3, :cond_72

    invoke-virtual {p1, p2, v2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    if-ltz p3, :cond_72

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_72
    iget-object p2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_7d

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-ne p2, v0, :cond_7d

    goto :goto_7e

    :cond_7d
    move v0, v2

    :goto_7e
    if-eqz v0, :cond_85

    iget-object p2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_85
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v1, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final isShowing()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final show(Lcom/android/launcher3/Launcher;Landroid/view/SurfaceControl;II)V
    .registers 9

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-ne v2, v0, :cond_11

    move v2, v0

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    if-nez v2, :cond_15

    return-void

    :cond_15
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    if-nez v2, :cond_38

    new-instance v2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v3, "OplusLauncherBlurLayer"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "OplusLauncher.Blur"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    :cond_38
    iget-object v2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-ne v2, v0, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    if-nez v0, :cond_47

    return-void

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show(), parentLayer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", blurLayer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", blurRadius="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", zOrder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusBlurLayer"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/states/OplusBlurLayer;->blurLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_a1

    invoke-interface {p1, p0}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_a4

    :cond_a1
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_a4
    return-void
.end method
