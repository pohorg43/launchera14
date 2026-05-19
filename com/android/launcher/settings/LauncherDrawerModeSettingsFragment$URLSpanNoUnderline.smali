.class public final Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "URLSpanNoUnderline"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;->context:Landroid/content/Context;

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    if-nez p1, :cond_6

    goto :goto_24

    :cond_6
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDrawerModeSettingsFragment$URLSpanNoUnderline;->context:Landroid/content/Context;

    if-eqz p0, :cond_16

    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_24
    return-void
.end method
