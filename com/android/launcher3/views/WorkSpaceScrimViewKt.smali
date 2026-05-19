.class public final Lcom/android/launcher3/views/WorkSpaceScrimViewKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWorkSpaceScrimView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkSpaceScrimView.kt\ncom/android/launcher3/views/WorkSpaceScrimViewKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"
    }
.end annotation


# direct methods
.method public static final getDynamicBlurProgress(Landroid/content/Context;F)F
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher/Launcher;

    goto :goto_e

    :cond_d
    move-object p0, v1

    :goto_e
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->isSupportIconBlur()Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object v1, p0

    :cond_1d
    if-eqz v1, :cond_23

    invoke-virtual {v1, p1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->getDynamicBlurProgress(F)F

    move-result p1

    :cond_23
    return p1
.end method
