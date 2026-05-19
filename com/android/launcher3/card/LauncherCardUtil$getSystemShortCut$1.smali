.class public final Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/LauncherCardUtil;->getSystemShortCut(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)Lcom/android/launcher3/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "Lcom/android/launcher/Launcher;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $clickListener:Landroid/view/View$OnClickListener;

.field public final synthetic $context:Lcom/android/launcher/Launcher;

.field public final synthetic $iconViewUms:Landroid/view/View;

.field public final synthetic $titleViewUms:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 13

    iput-object p1, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$context:Lcom/android/launcher/Launcher;

    iput-object p4, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$clickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$titleViewUms:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$iconViewUms:Landroid/view/View;

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onClick:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$titleViewUms:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemShortcut"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$context:Lcom/android/launcher/Launcher;

    const/4 p1, 0x1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_11

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$iconViewUms:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    if-nez p2, :cond_14

    goto :goto_1f

    :cond_14
    iget-object p0, p0, Lcom/android/launcher3/card/LauncherCardUtil$getSystemShortCut$1;->$titleViewUms:Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1c
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    return-void
.end method
