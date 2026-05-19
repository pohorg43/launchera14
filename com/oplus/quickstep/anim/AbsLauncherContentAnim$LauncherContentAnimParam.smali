.class public final Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/anim/AbsLauncherContentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LauncherContentAnimParam"
.end annotation


# instance fields
.field private alpha:F

.field private blur:F

.field private depth:F

.field private scale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->alpha:F

    iput v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->scale:F

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->alpha:F

    return p0
.end method

.method public final getBlur()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->blur:F

    return p0
.end method

.method public final getDepth()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->depth:F

    return p0
.end method

.method public final getScale()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->scale:F

    return p0
.end method

.method public final reset()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->alpha:F

    iput v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->blur:F

    iput v0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->depth:F

    return-void
.end method

.method public final setAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->alpha:F

    return-void
.end method

.method public final setBlur(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->blur:F

    return-void
.end method

.method public final setDepth(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->depth:F

    return-void
.end method

.method public final setScale(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->scale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "scale = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", depth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->depth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", blur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;->blur:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
