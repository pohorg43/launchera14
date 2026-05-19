.class public final Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createAnimListenerForLayerType(Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $view:Landroid/view/View;

.field private final listenerToken:I


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;Landroid/view/View;)V
    .registers 3

    iput-object p2, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    invoke-interface {p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->getListenerToken()I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->listenerToken:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "onAnimationCancel, listenerToken = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->listenerToken:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", viewToken = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    check-cast v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->getListenerToken()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherRemoteAnimUtil"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->listenerToken:I

    iget-object v0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    check-cast v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->getListenerToken()I

    move-result v0

    if-ne p1, v0, :cond_3e

    iget-object p1, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    check-cast p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {p0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->setListenerToken(I)V

    :cond_3e
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "onAnimEnd, listenerToken = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->listenerToken:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", viewToken = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    check-cast v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->getListenerToken()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherRemoteAnimUtil"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->listenerToken:I

    iget-object v0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    check-cast v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->getListenerToken()I

    move-result v0

    if-ne p1, v0, :cond_3e

    iget-object p1, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    check-cast p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {p0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->setListenerToken(I)V

    :cond_3e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "onAnimStart, token = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    check-cast v0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;

    invoke-interface {v0}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$IAnimListenerToken;->getListenerToken()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherRemoteAnimUtil"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil$createAnimListenerForLayerType$2;->$view:Landroid/view/View;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
